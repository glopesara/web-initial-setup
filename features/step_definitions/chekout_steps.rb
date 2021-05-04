Dado("clicar em finalizar compra") do
  @detalhes_produto.finalizar_compra()
end
Dado("submeto o novo email") do
  @checkout.novo_email()
end

Dado("submeto o formulario de identificação") do
  @checkout.form_identificacao()
end
Dado("submeto o formulario de Endereço") do
  @checkout.form_endereco()
end
Dado("submeta o formulario de cartão de credito") do
  @checkout.form_cartao()
end
