class BuscaDeProdutos
  include Capybara::DSL

  def selecionar_produto()
    produto = find_all(".nm-product-name a[title]").sample
    produto.click
  end
end
