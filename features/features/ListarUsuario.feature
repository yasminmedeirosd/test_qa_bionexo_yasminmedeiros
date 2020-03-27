#language: pt

@listarusuario
Funcionalidade: Listar um usuário

Contexto:
    Dado que estou no site automacao
    E clico no link de Lista de Usuários

@listarusuario_validarlista     
Cenário: Validar botão Voltar e Lista de Usuários
    Quando clico no botão Voltar para home
    E clico em Lista de Usuários
    Então visualizo a lista de usuários

@listarusuario_novousuario
Cenário: Validar botão Novo Uusário
    Quando clico no botão Novo Usuário
    E preencho os campos e salvo 
    E clico no botão Voltar
    Então valido os dados na tela de Listar Usuário

@listarusuario_pesquisar
Cenário: Validar a ação de pesquisa usuário
    Quando clico no ícone de Pesquisar
    Então valido os dados do usuário

@listarusuario_alterar
Cenário: Alterar dados do usuário
    Quando clico no ícone de Alterar
    E preencho o campo de profissão
    E clico em alterar
    Então valido a mensagem "Seu Usuário foi Atualizado!"

@listarusuario_excluir
Cenário: Excluir um usuário
    Quando clico no ícone de Excluir
    E clico em OK
    Então valido a mensagem "Seu Usuário foi removido com sucesso!" 