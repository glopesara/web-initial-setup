class CadastroUsuario
  include Capybara::DSL

  def criar_usuario(usuario)
    find("#appendedInputButton").set usuario[:email]
    click_button "Confirmar"
    if usuario[:senha].length > 0
      find("#inputNewPassword").set usuario[:senha]
      find("#inputConfirmNewPassword").set usuario[:senhaconfirma]
      click_button "Cadastrar nova senha"
    end
  end
end
