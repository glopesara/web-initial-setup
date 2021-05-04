Dado("submeta o formulario de login com") do |table|
  @usuario = table.hashes.first
  @tela_login.logar(@usuario)
end
Então("devo ser redirecionado para tela do cliente") do
  #has_css? se o css está na pagina
  expect(page.has_css?(".vtex-account__user-info")).to be true
end

Então("devo ver a {string} de alerta") do |string|
  message = page.find("#{@usuario[:id_mensagem]}").native.attribute("validationMessage")
  expect(message).to have_text string
end
