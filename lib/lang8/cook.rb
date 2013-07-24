module Lang8::Cook
  class Base
    attr_accessor :recipe
    @@recipe = ::Lang8::Recipe

    def self.cook(*args)
      self.new(*args)
    end

    def initialize(*args)
      @recipe = @@recipe.new(*args)
      @is_dressed = true
    end

    def bake
      @recipe.bake
    end
  end

  class Login < Base
    @@recipe = ::Lang8::Recipe::LoginRecipe
  end

  class PostJournal < Base
    @@recipe = ::Lang8::Recipe::PostJournalRecipe
  end
end
