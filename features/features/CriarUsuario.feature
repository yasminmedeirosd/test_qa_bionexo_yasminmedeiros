#language: pt

@criarusuario
Funcionalidade: Criar um usuário

Contexto:
    Dado que estou no site
    E clico na funcionalidade Criar Usuários

@criarusuario_novo
Cenário: Criar um novo usuário
    E preencho os campos corretamente
    Quando clico em Criar
    Então valido a mensagem de sucesso "Usuário Criado com sucesso"
    E os dados salvos corretamente

@criarusuario_dadosincorretos
Cenário: Preencher o campos incorretamente
    E preencho os campos de forma incorreta
    Quando clico em Criar
    Então valido mensagem de erro "1 error proibiu que este usuário fosse salvo:"
    E valido que o campo idade está vazio

@criarusuario_semcamposobrigatorios
Cenário: Criar um usuário sem preencher os campos obrigatórios
    Quando clico em Criar
    Então valido mensagem de erro "3 errors proibiu que este usuário fosse salvo:"

