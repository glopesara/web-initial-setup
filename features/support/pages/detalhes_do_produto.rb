class DetalhesProduto
  include Capybara::DSL

  def comprar()
    click_link "Comprar"
  end

  def continuar_compando()
    click_link "Continuar Comprando"
  end

  def finalizar_compra()
    click_link "Finalizar Compra"
  end
end
