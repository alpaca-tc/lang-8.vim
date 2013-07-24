module Lang8
  class Configuration
    def initialize
      add_setting :default_driver, default: :webkit
      add_setting :app_host, default: 'http://lang-8.com'
    end

    def self.add_setting(name, opts={})
      attr_accessor name
    end

    def add_setting(name, opts={})
      default = opts.delete(:default)
      (class << self; self; end).class_eval do
        add_setting(name, opts)
      end

      instance_variable_set("@#{name}", default) if default
    end
  end
end
