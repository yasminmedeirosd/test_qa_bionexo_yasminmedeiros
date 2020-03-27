class LinksPage < SitePrism::Page
    include RSpec::Matchers

    element :lnk_buscaElementos, :css, "body > div.row > div.col.s3 > ul > li:nth-child(2)"
    element :lnk_links, :css, "body > div.row > div.col.s3 > ul > li.bold.active > div > ul > li:nth-child(1) > a"

    element :lnk_sucess, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div:nth-child(1) > a"
    element :lnk_badRequest, :css, "body > div.row > div.col.s9 > div:nth-child(4) > div:nth-child(1) > a"
    element :lnk_pageNotFound, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div:nth-child(2) > a"
    element :lnk_internalServer, :css, "body > div.row > div.col.s9 > div:nth-child(4) > div:nth-child(2) > a"

    element :lbl_message_line1, :css, "body > div.row > div.col.s9 > div:nth-child(2) > div > h5"
    element :lbl_message_line2, :css, "body > div.row > div.col.s9 > div:nth-child(2) > h5"


    def clicar_link_menu()
        Capybara.using_wait_time(3) do
            lnk_buscaElementos.click
        end
    end

    def clicar_link(link)
        case link
            when "Success"
                lnk_sucess.click
            when "Bad Request"
                lnk_badRequest.click
            when "Page Not Found"
                lnk_pageNotFound.click
            when "Internal Server Error"
                lnk_internalServer.click
        end
    end

    def clicar_links()
        lnk_links.click
    end

    def validar_mensagem_linha1(mensagem)
        expect(lbl_message_line1.text).to eql(mensagem)
    end

    def validar_mensagem_linha2(mensagem)
        expect(lbl_message_line2.text).to eql(mensagem)
    end

    def validar_mensagem(mensagem)
        case mensagem
            when "Sucess!!"
                validar_mensagem_linha1(mensagem)
            when "Bad Request!!"
                validar_mensagem_linha2(mensagem)
            when "Page Not Found!!"
                validar_mensagem_linha1(mensagem)
            when "Internal Server Error!!"
                validar_mensagem_linha2(mensagem)
        end
    end


end