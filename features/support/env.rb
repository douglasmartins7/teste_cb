require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

require_relative 'helpers'


World(Helpers)
 

$browser = ENV['BROWSER']
$headless = ENV['HEADLESS']
$env = ENV['ENV']

Capybara.register_driver :selenium do |app|

    if $browser.eql?('headless')
      Capybara::Selenium::Driver.new(app,
      :browser => :chrome,
      :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {
          'args' => [ "headless", "window-size=1280x720", "disable-gpu"]
        }
      )
    )
  elsif $browser.eql?('chrome')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome
    )
    elsif $browser.eql?('firefox')
      Capybara::Selenium::Driver.new(
        app,
        browser: :firefox
      )
    elsif $browser.eql?('ie')
      Capybara::Selenium::Driver.new(
        app,
        browser: :internet_explorer
      )
    end

end

if $env.eql?('dev')
  $environment = ""
elsif $env.eql?('hlg')
  $environment = ""
elsif $env.eql?('prod')
  $environment = "http://carrinho.casasbahia.com.br/?idsku=55014843"
else 
  $environment = ""
end

Capybara.configure do |config|
  config.default_driver = :selenium
  #config.app_host = 'https://ninjainvoices.herokuapp.com'
end

Capybara.default_max_wait_time = 5
