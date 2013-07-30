module Lang8::Chef
  class Base
    attr_accessor :recipe

    def self.cook(*args)
      self.new(*args).cook
    end

    def initialize(*args)
      set_recipe
      @recipe_instance = @recipe.new(*args)
      @is_dressed = true
    end

    def cook
      @recipe_instance.bake
    end

    private
    def set_recipe 
      @recipe = ::Lang8::Recipe
    end
  end
end
