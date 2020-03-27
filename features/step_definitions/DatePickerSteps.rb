# encoding: utf-8
# !/usr/bin/env ruby

Dado("que estou na home do site de automacao") do
  visit "/treinamento/home"
  @datepicker = DatePickerPage.new
end

Dado("clico no menu em Widgets") do
  @datepicker.clicar_menu_widgets()
end

Dado("clico em Datapicker") do 
  @datepicker.clicar_menu_dataPicker()
end

Quando("clico para visualizar o calendário") do
  @datepicker.clicar_datePicker()
end

Então("visualizo o modal com o calendário") do
  @datepicker.validar_modal_datePicker()
end

Dado("clico para visualizar o modal do calendário") do
  @datepicker.clicar_datePicker()
end

Quando("seleciono uma data correta") do
  @datepicker.selecionar_data()
end

Então("o calendário fica com a data escolhida selecionada") do
  @datepicker.validar_campo_data_preenchida("Mon, Mar 30")
end

Quando("seleciono uma data futura") do
  @datepicker.selecionar_data_futura()
end

Então("o calendário fica com a data futura selecionada") do
  @datepicker.validar_campo_data_preenchida("Fri, Apr 17")
end

