require 'active_support/all'
require 'mechanize'
require 'core_ext/hash'
require 'core_ext/module'

module Lang8
  AUTHOR = 'alpaca-tc'

  autoload :Recipe, 'lang8/recipe'
  autoload :Ingredient, 'lang8/ingredient'
  autoload :Chef, 'lang8/chef'
  autoload :Configuration, 'lang8/configuration'

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end
end
