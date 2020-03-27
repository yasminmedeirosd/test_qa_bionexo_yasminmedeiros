class DatePickerPage < SitePrism::Page
    include RSpec::Matchers

    element :lnk_widgets, :css, "body > div.row > div.col.s3 > ul > li:nth-child(4)"
    element :lnk_menu_datePicker, :css, "body > div.row > div.col.s3 > ul > li.bold.active > div > ul > li:nth-child(3) > a"

    element :input_datePicker, :id, "datepicker"
    element :modal_datePicker, :xpath, "//*[@class='datepicker-calendar-container']/div/div[2]"
    element :dtpk_dia, :xpath, "/html/body/div[2]/div[2]/div[3]/div[2]/p/div[1]/div/div[2]/div[1]/div[2]/table/tbody/tr[5]/td[2]/button"
    element :btn_ok, :xpath, "/html/body/div[2]/div[2]/div[3]/div[2]/p/div[1]/div/div[2]/div[2]/div/button[2]"
    element :btn_proximo_mes, :xpath, "/html/body/div[2]/div[2]/div[3]/div[2]/p/div[1]/div/div[2]/div[1]/div[1]/button[2]"
    element :dtpk_dia_futuro, :xpath, "/html/body/div[2]/div[2]/div[3]/div[2]/p/div[1]/div/div[2]/div[1]/div[2]/table/tbody/tr[3]/td[6]/button"
    element :txt_data, :xpath, "/html/body/div[2]/div[2]/div[3]/div[2]/p/div[1]/div/div[1]/span[2]"
    
    def clicar_menu_widgets()
       Capybara.using_wait_time(2) do
        lnk_widgets.click
       end
    end

    def clicar_menu_dataPicker()
        Capybara.using_wait_time(2) do
            lnk_menu_datePicker.click
        end
    end

    def clicar_datePicker()
        input_datePicker.click
    end

    def selecionar_data()
        Capybara.using_wait_time(2) do
            dtpk_dia.click
            btn_ok.click
        end
    end

    def selecionar_data_futura()
        Capybara.using_wait_time(2) do
            btn_proximo_mes.click
            dtpk_dia_futuro.click
            btn_ok.click
        end
    end

    def validar_modal_datePicker()
        expect(modal_datePicker.visible?).to be(true)
    end

    def validar_campo_data_preenchida(data)
        expect(txt_data.text).to eql(data)
    end
end