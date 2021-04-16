require "Capybara"
require "Capybara/cucumber"
require_relative "helper"
World(Helper)

#variaveis de browser
case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "fire_headless"
  @driver = :selenium_headless
when "chrome"
  @driver = :selenium_chrome
when "chrome_headless"
  @driver == :selenium_chrome_headless
else
  raise "navegador incorreto"
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = "https://www.cobasi.com.br/"
  Capybara.default_max_wait_time = 5
end
