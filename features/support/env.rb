require "capybara"
require "capybara/cucumber"
require "site_prism"
require "selenium-webdriver"
require "rspec"
require "report_builder"
require "allure-cucumber"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 30
  #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
  config.app_host = "https://automacaocombatista.herokuapp.com"
end

# if ENV["chrome"]
#   Capybara.default_driver = :chrome
#   Capybara.register_driver :chrome do |app|
#     options = {
#       :js_errors => false,
#       :timeout => 360,
#       :debug => false,
#       :inspector => false,
#     }
#     Capybara::Selenium::Driver.new(app, :browser => :chrome)
#   end
# elsif ENV["firefox"]
#   Capybara.default_driver = :firefox
#   Capybara.register_driver :firefox do |app|
#     options = {
#       :js_errors => false,
#       :timeout => 360,
#       :debug => false,
#       :inspector => false,
#     }
#     Capybara::Selenium::Driver.new(app, :browser => :firefox)
#   end
