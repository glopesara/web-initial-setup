class TelaDeLogin
  include Capybara::DSL

  def acessar_tela
    visit "https://www.cobasi.com.br/login?ReturnUrl=%2f_secure%2faccount%2forders%2f"
  end

  def selecao_de_login(opcao)
    case opcao
    when "email"
      find("#loginWithUserAndPasswordBtn").click
    when "google"
      find(" #vtexIdUI-google-plus").click
    end
  end

  def clicar_sem_senha
    click_link "Não tem uma senha? Cadastre agora"
  end
end
