#language: pt

@links
Funcionalidade: Validar links

Contexto:
    Dado que estou no site de automacao
    E clico no menu em Busca de Elementos
    E clico em links

@links_sucesso
Cenário: Validar link de Sucesso
    Quando clico no link referente a "Success"
    Então visualizo a mensagem de "Success!!"

@links_badrequest
Cenário: Validar link de erro Bad Request
    Quando clico no link referente a "Bad Request" 
    Então visualizo a mensagem de "Bad Request!!"

@link_pagina_nao_encontrada
Cenário: Validar link de erro de página não encontrada
    Quando clico no link referente a "Page Not Found"
    Então visualizo a mensagem de "Page Not Found!!"

@link_internal_server_error
Cenário: Validar link  de erro internal server
    Quando clico no link referente a "Internal Server Error"
    Então visualizo a mensagem de "Internal Server Error!!"