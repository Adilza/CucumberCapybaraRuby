
# require 'capybara/cucumber' 
# comentando o require acima e incluindo as riqueres:  'capybara/dsl',  'capybara/rspec/matchers' e
# as worlds World(Capybara::DSL) World(Capybara::RSpecMatchers) 
# o sistema não encerrar uma sessão para começar outra

require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
#=

Capybara.configure do |config|
    config.default_driver=:selenium_chrome
    config.app_host= 'http://automacaocombatista.herokuapp.com/'
    config.default_max_wait_time = 5
  
end

# PATH = "C:\Windows.chromedriver.exe"

#     Capybara.configure do |config|
#     config.default_driver = :selenium_chrome
#     config.app_host= 'http://automacaocombatista.herokuapp.com/'
#     config.default_max_wait_time = 5
# end
