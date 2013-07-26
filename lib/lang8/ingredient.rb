module Lang8::Ingredient
  mattr_accessor :agent

  def self.agent
    @@agent ||= Mechanize.new do |c|
      c.follow_meta_refresh = true
    end
  end

  def self.root_path
    Lang8.configuration.lang8_host
  end

  autoload :Login, 'lang8/ingredient/login'
  autoload :PostJournal, 'lang8/ingredient/post_journal'
end
