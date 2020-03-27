# encoding: utf-8
# !/usr/bin/env ruby

Dado("que estou no site automacao") do
  visit "/treinamento/home"
  @listar_usuario = FormularioPage.new
end

Dado(/^clico no link de Lista de Usuários$/) do
  @listar_usuario.clicar_link_listar_usuario()
end

Quando("clico no botão Voltar para home") do
  @listar_usuario.clicar_voltar_lista()
end

Quando(/^clico em Lista de Usuários$/) do
  @listar_usuario.clicar_link_listar_usuario()
end

Então(/^visualizo a lista de usuários$/) do
  @listar_usuario.validar_presenca_tabela()
end

Quando("clico no botão Novo Usuário") do
  @listar_usuario.clicar_botao_novo_usuario()
end

Quando("preencho os campos e salvo") do
  @listar_usuario.preencher_campos("Argus", "Queen", "argusqueen@gmail.com", "Av. Paulista", "Fatec Rubens Lara", "Lider de QA Master Sr.", "Masculino", "29")
  @listar_usuario.clicar_botao_criar()
end

Quando("clico no botão Voltar") do
  @listar_usuario.clicar_voltar()
end

Então("valido os dados na tela de Listar Usuário") do
  @listar_usuario.validar_dados_tabela("Argus")
end

Dado("clico na funcionalidade Lista de Usuários") do
  @listar_usuario.clicar_link_listar_usuario()
end

Quando("clico no ícone de Pesquisar") do
  @listar_usuario.clicar_pesquisar()
end

Então("valido os dados do usuário") do
  @listar_usuario.validar_dados("Argus", "Queen", "argusqueen@gmail.com", "Av. Paulista", "Fatec Rubens Lara", "Lider de QA Master Sr.", "Masculino", "29")
end

Quando("clico no ícone de Alterar") do
  @listar_usuario.clicar_alterar()
end

Quando("preencho o campo de profissão") do
  @listar_usuario.preencher_campo_profissao(" I")
end

Quando("clico em criar") do
  @listar_usuario.clicar_botao_criar()
end

Quando("clico em alterar") do
  @listar_usuario.clicar_botao_alterar()
end

Então("valido a mensagem {string}") do |mensagem|
  @listar_usuario.validar_mensagem(mensagem)
end

Quando("clico no ícone de Excluir") do
  @listar_usuario.clicar_excluir()
end

Quando("clico em OK") do
  @listar_usuario.confirmar_alerta()
end
