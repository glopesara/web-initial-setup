Before do
  @motor_busca = MotorBusca.new
  @tela_resultado = BuscaDeProdutos.new
  @detalhes_produto = DetalhesProduto.new
  @cadastro = CadastroUsuario.new
  @checkout = Checkout.new
  page.current_window.resize_to(1440, 900)
end

After do |cenario|
  nome_cenario = cenario.name.gsub(/\s+/, "_").tr("/", "_")

  if cenario.failed?
    tirar_foto(nome_cenario.downcase!, "falhou")
  else
    tirar_foto(nome_cenario.downcase!, "passou")
  end
end
