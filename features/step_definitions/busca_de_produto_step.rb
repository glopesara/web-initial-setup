Dado("que eu faça a busca do seguinte produto") do |table|
  visit ""
  @pesquisa = table.rows_hash
  sleep 2
  @motor_busca.pesquisar(@pesquisa)
end

# Então("devo ver a tela de busca") do
#   resultado = find(".neemu-breadcrumb-container strong").text
#   expect(resultado).to have_text @pesquisa[:nome].upcase!
# end

Dado("clico em algum produto") do
  @tela_resultado.selecionar_produto()
end

Dado("na tela de detalhes do produto clico em comprar") do
  @detalhes_produto.comprar()
end

Dado("clico em continuar comprando") do
  @detalhes_produto.continuar_compando()
  # expect(page.has_css?(".modal.fade.modal-cart.show")).to be true
end

Então("meu carrinho deve estar com um produto") do
  resultado = find(".amount-products-em").text
  expect(resultado).to eql "1"
end

Dado("no modal clico em finalizar compra") do
  @detalhes_produto.modal_finalizar_compra()
end

Então("devo ser redirecionado para checkout") do
  resultado = find(".sc-jDwBTQ").text
  expect(resultado).to have_text "Resumo do pedido"
end
# Então("devo ver a tela de detalhe do produto") do
#   expect(page.has_css?(".product__name")).to be true
# end
