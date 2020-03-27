# encoding: utf-8
# !/usr/bin/env ruby

  Dado("que estou no site de automacao") do
    visit "/treinamento/home"
    @links = LinksPage.new
  end
  
  Dado("clico no menu em Busca de Elementos") do
    @links.clicar_link_menu()
  end
  
  Dado("clico em links") do
    @links.clicar_links()
  end

  Quando("clico no link referente a {string}") do |link|
    @links.clicar_link(link)
  end

  Então("visualizo a mensagem de {string}") do |msg|
    @links.validar_mensagem(msg)
  end
  
  