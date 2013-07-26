module Lang8::Cook
  class Base
    attr_accessor :recipe

    def self.cook(*args)
      self.new(*args)
    end

    def initialize(*args)
      set_recipe
      @recipe_instance = @recipe.new(*args)
      @is_dressed = true
    end

    def bake
      @recipe_instance.bake
    end

    private
    def set_recipe 
      @recipe = ::Lang8::Recipe
    end
  end

  class Login < Base
    private
    def set_recipe 
      @recipe = ::Lang8::Recipe::LoginRecipe
    end
  end

  class PostJournal < Base
    private
    def set_recipe 
      @recipe = ::Lang8::Recipe::PostJournalRecipe
    end
  end
end
