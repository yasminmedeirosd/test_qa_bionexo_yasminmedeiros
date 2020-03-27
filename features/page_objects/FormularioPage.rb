class FormularioPage < SitePrism::Page
  include RSpec::Matchers

  # Elementos-CriarUsuario
  element :lnk_formulario, :css, "body > div.row > div.col.s3 > ul > li:nth-child(1) > a"
  element :lnk_criar_usuario, :css, "body > div.row > div.col.s3 > ul > li.bold.active > div > ul > li:nth-child(1) > a"
  element :txt_nome, :id, "user_name"
  element :txt_user_lastname, :id, "user_lastname"
  element :txt_user_email, :id, "user_email"
  element :txt_user_address, :id, "user_address"
  element :txt_user_university, :id, "user_university"
  element :txt_user_profile, :id, "user_profile"
  element :txt_user_gender, :id, "user_gender"
  element :txt_user_age, :id, "user_age"
  element :lbl_nome, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div > p:nth-child(1)"
  element :lbl_user_last, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div > p:nth-child(2)"
  element :lbl_user_email, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div > p:nth-child(3)"
  element :lbl_user_university, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div > p:nth-child(4)"
  element :lbl_user_gender, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div > p:nth-child(5)"
  element :lbl_user_profile, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div > p:nth-child(6)"
  element :lbl_user_age, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div > p:nth-child(7)"
  element :lbl_user_address, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div > p:nth-child(8)"

  # Elementos-Listar Usuario
  element :lnk_listar_usuario, :css, "body > div.row > div.col.s3 > ul > li.bold.active > div > ul > li:nth-child(2) > a"
  element :btn_novo_usuario, :css, "body > div.container > div:nth-child(3) > div > a.btn.waves-light.green"
  element :lnk_pesquisar, :css, "body > div.row > div > table > tbody > tr:nth-child(1) > td:nth-child(9) > a"
  element :lnk_alterar, :css, "body > div.row > div > table > tbody > tr:nth-child(1) > td:nth-child(10) > a"
  element :lnk_excluir, :css, "body > div.row > div > table > tbody > tr:nth-child(1) > td:nth-child(11) > a"
  element :btn_voltar, :css, "body > div.row > div.col.s9 > div:nth-child(3) > div > a.btn.waves-light.red"
  element :btn_voltar_tela_listar, :css, "body > div.container > div:nth-child(3) > div > a.btn.red"
  element :lbl_nome, :css, "body > div.row > div > table > tbody > tr:nth-child(1) > td:nth-child(1)"
  element :tbl_listausuario, :css, "body > div.row > div"

  # Elementos-Formulario
  element :btn_criar, :css, "#new_user > div:nth-child(7) > div > div > input[type=submit]"
  element :btn_alterar, :xpath, "//input[contains(@name, 'commit')]"
  element :lbl_mensagem, :id, "notice"
  element :lbl_mensagem_erro, :css, "#error_explanation > h2"

  def clicar_link_criar_usuario()
    Capybara.using_wait_time(2) do
      lnk_formulario.click
      lnk_criar_usuario.click
    end
  end

  def clicar_link_listar_usuario()
    Capybara.using_wait_time(2) do
      lnk_formulario.click
      lnk_listar_usuario.click
    end
  end

  def preencher_campos(nome, sobrenome, email, endereco, universidade, profissao, genero, idade)
    Capybara.using_wait_time(3) do
      txt_nome.send_keys(nome)
      txt_user_lastname.send_keys(sobrenome)
      txt_user_email.send_keys(email)
      txt_user_address.send_keys(endereco)
      txt_user_university.send_keys(universidade)
      txt_user_profile.send_keys(profissao)
      txt_user_gender.send_keys(genero)
      txt_user_age.send_keys(idade)
    end
  end

  def clicar_botao_novo_usuario()
    Capybara.using_wait_time(2) do
      btn_novo_usuario.click
    end
  end

  def clicar_voltar_lista()
    btn_voltar_tela_listar.click
  end

  def clicar_voltar()
    btn_voltar.click
  end

  def clicar_pesquisar()
    lnk_pesquisar.click
  end

  def clicar_alterar()
    lnk_alterar.click
  end

  def clicar_excluir()
    lnk_excluir.click
  end

  def preencher_campo_profissao(profissao)
    txt_user_profile.send_keys(profissao)
  end

  def confirmar_alerta()
    page.driver.browser.switch_to.alert.accept
  end

  def clicar_botao_criar()
    Capybara.using_wait_time(2) do
      btn_criar.click
    end
  end

  def clicar_botao_alterar()
    Capybara.using_wait_time(2) do
     btn_alterar.click
    end
  end

  def validar_dados(nome, sobrenome, email, endereco, universidade, profissao, genero, idade)
    Capybara.using_wait_time(3) do
      expect(page).to have_content(nome)
      expect(page).to have_content(sobrenome)
      expect(page).to have_content(email)
      expect(page).to have_content(endereco)
      expect(page).to have_content(universidade)
      expect(page).to have_content(profissao)
      expect(page).to have_content(genero)
      expect(page).to have_content(idade)
    end
  end

  def validar_campo_idade(idade)
     expect(txt_user_age.text).to eql(idade)
  end

  def validar_presenca_tabela()
    expect(tbl_listausuario.visible?).to be(true)
  end

  def validar_dados_tabela(nome)
    expect(lbl_nome.text).to eql(nome)
  end

  def validar_mensagem_erro(mensagem_erro)
    Capybara.using_wait_time(2) do
      expect(lbl_mensagem_erro.text).to eql(mensagem_erro)
    end
  end

  def validar_mensagem(mensagem)
    Capybara.using_wait_time(2) do
      expect(lbl_mensagem.text).to eql(mensagem)
    end
  end

end
