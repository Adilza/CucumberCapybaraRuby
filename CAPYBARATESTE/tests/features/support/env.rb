
require 'capybara/cucumber'
require 'selenium-webdriver'


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
