#language: pt

@datePicker
Funcionalidade: Validar interação com Datapicker

Contexto:
    Dado que estou na home do site de automacao
    E clico no menu em Widgets
    E clico em Datapicker

@datePicker_acesso
Cenário: Validar datepicker correto
    Quando clico para visualizar o calendário
    Então visualizo o modal com o calendário

@datePicker_incluirData
Cenário: Validar seleção de data
    E clico para visualizar o modal do calendário
    Quando seleciono uma data correta
    Então o calendário fica com a data escolhida selecionada

@datePicker_dataFutura
Cenário: Validar seleção de data futura
    E clico para visualizar o modal do calendário
    Quando seleciono uma data futura
    Então o calendário fica com a data futura selecionada