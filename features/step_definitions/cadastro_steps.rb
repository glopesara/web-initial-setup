Dado("que eu acesse a tela de cadastro com Email e senha") do
  @cadastro.pagina_cadastro_email
end

Dado("submeta o formulario com") do |table|
  @usuario = table.hashes.first
  @cadastro.criar_usuario(@usuario)
end

Então("devo ver a {string}") do |string|
  message = page.find("#{@usuario[:id_mensagem]}").native.attribute("validationMessage")
  expect(message).to eql string
end

Então("devo ver a {string} de senhas não iguais") do |string|
  resultado = find("#{@usuario[:id_mensagem]}").text
  expect(resultado).to have_text string
end

Então("devo ver o chek") do
  expect(page.has_no_css?("#{@usuario[:find]}")).to be true
end
