class Module
  private
  def autoloading(base, dir_name)
    Dir[File.expand_path("../#{dir_name}", base) + "/**/*.rb"].sort.each{ |f| require f }
  end
end
