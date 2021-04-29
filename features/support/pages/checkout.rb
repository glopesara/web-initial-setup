class Checkout
  include Capybara::DSL

  def novo_email
    find("input[name='email']").set Faker::Internet.email
    click_button "Continuar"
  end

  def form_identificacao
    find("input[name='document']").set CPF.generate
    find("input[name='firstName']").set Faker::Name.male_first_name
    find("input[name='lastName']").set Faker::Name.last_name
    find("input[name='phone']").set "11966485569"
    click_button "Salvar dados"
  end

  def form_endereco
    find("input[name='postalCode']").set "76828696"
    sleep 1
    find("input[name='street']").set "Rua Jussara"
    find("input[name='number']").set "10"
    find("input[name='neighborhood']").set "Jardim Santana"
    find("input[name='city']").set "Porto Velho"
    find("input[name='state']").set "RO"
    find("#addressType-residential").click
    click_button "Salvar endereço"
  end

  def form_cartao
    find("input[name='cardNumber']").set "5506399457796757"
    find("input[name='holderName']").set "Teste Teste"
    find("input[name='dueDate']").set "0422"
    find("input[name='validationCode']").set "422"
    #selecionar parcelas
    #   find("select[name='installments']").find("option").set 2
    find("input[name='document']").set CPF.generate
  end
end
