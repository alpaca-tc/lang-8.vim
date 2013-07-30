module Lang8::Ingredient
  autoloading __FILE__, :ingredient
  mattr_accessor :agent

  def self.agent
    @@agent ||= Mechanize.new do |c|
      c.follow_meta_refresh = true
    end
  end

  def self.root_path
    Lang8.configuration.lang8_host
  end
end
