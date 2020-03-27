# encoding: utf-8
# !/usr/bin/env ruby

Dado("que estou no site") do
  visit "/treinamento/home"
  @criar_usuario = FormularioPage.new
end

Dado("clico na funcionalidade Criar Usuários") do
  @criar_usuario.clicar_link_criar_usuario()
end

Dado("preencho os campos corretamente") do
  @criar_usuario.preencher_campos("Maria", "Silva", "maria.teste@bionexo.com.br", "Av. Ana Costa", "Fatec Santos", "QA", "Feminino", "25")
end

Quando("clico em Criar") do
  @criar_usuario.clicar_botao_criar()
end

Então("valido a mensagem de sucesso {string}") do |mensagem|
  @criar_usuario.validar_mensagem(mensagem)
end

Então("os dados salvos corretamente") do
  @criar_usuario.validar_dados("Maria", "Silva", "maria.teste@bionexo.com.br", "Av. Ana Costa", "Fatec Santos", "QA", "Feminino", "25")
end

Dado("preencho os campos de forma incorreta") do
  @criar_usuario.preencher_campos("João", "Santos", "joao.santos", "Av. Ricaro Jafet", "USP", "Analista desenvolvedor ", "Masculino", " ")
end

Então("valido mensagem de erro {string}") do |mensagem_erro|
  @criar_usuario.validar_mensagem_erro(mensagem_erro)
end

Então("valido que o campo idade está vazio") do
  @criar_usuario.validar_campo_idade("")
end
