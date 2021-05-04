Dado("que eu acesse a tela de login") do
  @tela_login.acessar_tela()
end

Dado("selecione a opção com email e senha") do
  @tela_login.selecao_de_login("email")
end

Dado("click em não tem uma senha") do
  @tela_login.clicar_sem_senha()
end
Dado("submeta o formulario de cadastro com") do |table|
  @usuario = table.hashes.first
  @cadastro.criar_usuario(@usuario)
end

Então("devo ver a {string}") do |string|
  message = page.find("#{@usuario[:id_mensagem]}").native.attribute("validationMessage")
  expect(message).to have_text string
end

Então("devo ver a {string} de senhas não iguais") do |string|
  resultado = find("#{@usuario[:id_mensagem]}").text
  expect(resultado).to have_text string
end

Então("devo ver o chek") do
  expect(page.has_no_css?("#{@usuario[:find]}")).to be true
end
