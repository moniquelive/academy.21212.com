---
id: 5994
title: Configurando vários domínios no nginx sem repetição
date: 2015-05-05T16:00:54+00:00
author: Leonardo Cyber
layout: post
guid: /?p=5994
permalink: /blog/configurando-nginx-sem-repeticao/
post-option:
  - '{"sidebar":"default-sidebar","left-sidebar":"Footer 1","right-sidebar":"Footer 1","page-title":"","page-caption":""}'
modal-dialog-id:
  - "1"
mixpanel_event_label:
  - ""
categories:
  - Blog
  - DEV
  - Tutoriais
---
<p style="text-align: justify;">
  Salve!
</p>

<p style="text-align: justify;">
  Dando continuidade ao <a href="/blog/guia-de-landing-pages-para-desenvolvedores/">último artigo</a> sobre landing pages para desenvolvedores, neste artigo vamos ver uma configuração do servidor <a href="http://nginx.org/">nginx</a> que vai facilitar bastante a configuração das suas landing pages com pouca repetição.
</p>

<p style="text-align: justify;">
  Aqui na 21212 Academy nós procuramos realizar aquilo que pregamos. Como, por exemplo, validar hipóteses com landing pages, assunto do <a href="/blog/guia-de-landing-pages-para-desenvolvedores/">artigo anterior</a>. Recentemente criamos 7 landing pages com os respectivos domínios:
</p>

  * [www.modelo-financeiro-startup.com.br](http://www.modelo-financeiro-startup.com.br)
  * [www.como-atrair-mais-clientes.com.br](http://www.como-atrair-mais-clientes.com.br)
  * [www.como-validar-minha-ideia.com.br](http://www.como-validar-minha-ideia.com.br)
  * [www.conselhos-para-startups.com.br](http://www.conselhos-para-startups.com.br)
  * [www.fluxo-de-caixa-startup.com.br](http://www.fluxo-de-caixa-startup.com.br)
  * [www.o-que-e-o-lean-canvas.com.br](http://www.o-que-e-o-lean-canvas.com.br)
  * [www.como-criar-um-mvp.com.br](http://www.como-criar-um-mvp.com.br)

<p style="text-align: justify;">
  Elas foram criadas usando o framework <a href="http://middlemanapp.com">Middleman</a> e seguem uma estrutura bastante parecida. Minha primeira reação foi procurar uma maneira de declarar estas landing pages todas com um mínimo de duplicação na configuração do nginx.
</p>

Faça o download do Ebook: Configurando vários domínios no nginx sem repetição

<div class="gdlr-course-button" >
  <a  href='http://bit.ly/nginx-sem-repeticao'>Registre-se</a>
</div>

&nbsp;