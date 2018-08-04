# A plugin for embedding videos from Vimeo using a simple Liquid tag, ie: {% vimeo 12345678 %}.
# Based of the Youtube plugin from http://www.portwaypoint.co.uk/jekyll-youtube-liquid-template-tag-gist/

module Jekyll
  class Vimeo < Liquid::Tag
    @@width = 500
    @@height = 281

    VARIABLE_SYNTAX = %r!
      (?<variable>[^{]*(\{\{\s*[\w\-\.]+\s*(\|.*)?\}\}[^\s{}]*)+)
      (?<params>.*)
    !mx

    def initialize(name, id, tokens)
      super
      matched = id.strip.match(VARIABLE_SYNTAX)
      if matched
        @id = matched["variable"].strip
      else
        @id = id
      end
    end

    # Borrowed from https://github.com/jekyll/jekyll/blob/master/lib/jekyll/tags/include.rb
    # Render the variable if required
    def render_variable(context)
      if @id =~ VARIABLE_SYNTAX
        partial = context.registers[:site]
          .liquid_renderer
          .file("(variable)")
          .parse(@id)
        partial.render!(context)
      end
    end

    def render(context)
      id = render_variable(context) || @id
      %(<iframe width="#{@@width}" height="#{@@height}" src="http://player.vimeo.com/video/#{id}" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>)
    end
  end
end

Liquid::Template.register_tag('vimeo', Jekyll::Vimeo)