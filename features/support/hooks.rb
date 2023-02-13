Before do
  visit "./"
  # page.current_window.resize_to(1440, 900)
end

# After do |cenario|
#   nome_cenario = cenario.name.gsub(/\s+/, "_").tr("/", "_")

#   if cenario.failed?
#     tirar_foto(nome_cenario.downcase!, "falhou")
#   else
#     tirar_foto(nome_cenario.downcase!, "passou")
#   end
# end

After do
  #save_screenshot serve para tirar um print a qualquer momento
  #passo o local aonde vou salvar o print
  tempo_shot = page.save_screenshot("logs/temp_screenshot.png")

  #chamo o modulo do alure para salvar a evidencia
  #cada linha passo um argumento
  Allure.add_attachment(
    #link para acessar a foto
    name: "Screenshot",
    #tipo do aquivo
    type: Allure::ContentType::PNG,
    #aonde está o aruqivo que esta na temp shot
    source: File.open(tempo_shot),
  )
end
