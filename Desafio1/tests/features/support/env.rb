require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'ostruct'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

World(PageObjects)
World(Helper) 

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
        app, 
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => { 'args' => ['--disable-infobars', 'window-size=1600,1024', '--incognito']}
        )
    )
end

  Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'https://www.unimed.coop.br'
    config.default_max_wait_time = 10
  end
  

