class CadastroUsuario
  include Capybara::DSL

  def pagina_cadastro_email
    visit "https://www.cobasi.com.br/login?ReturnUrl=%2f_secure%2faccount%2forders%2f"
    find("#loginWithUserAndPasswordBtn").click
    click_link "Não tem uma senha? Cadastre agora"
  end

  def criar_usuario(usuario)
    find("#appendedInputButton").set usuario[:email]
    click_button "Confirmar"
    if usuario[:senha].length > 0
      find("#inputNewPassword").set usuario[:senha]
      find("#inputConfirmNewPassword").set usuario[:senhaconfirma]
      click_button "Cadastrar nova senha"
      sleep 2
    end
  end
end
