require 'spec_helper'
require 'fuubar'
$: << './lib'

require 'lang8'

Rspec.configure do |config|
  config.order = 'random'
end
