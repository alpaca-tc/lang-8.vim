module Lang8::Chef
  class Login < Base
    private
    def set_recipe 
      @recipe = ::Lang8::Recipe::LoginRecipe
    end
  end
end
