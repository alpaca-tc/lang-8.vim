
require 'active_support/all'
require 'capybara'
require 'capybara-webkit'

module Lang8
  AUTHOR = 'alpaca-tc'

  autoload :Recipe, 'lang8/recipe'
  autoload :Ingredient, 'lang8/ingredient'
  autoload :Cook, 'lang8/cook'
  autoload :Configuration, 'lang8/configuration'

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
    ::Capybara.app_host = configuration.app_host
    ::Capybara.default_driver = configuration.default_driver
  end
end
