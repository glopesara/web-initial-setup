class MotorBusca
  include Capybara::DSL

  def pesquisar(produto)
    find(".neemu-search-field").set produto[:nome]
    find("input[value='Buscar']").click
  end
end
