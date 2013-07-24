module Lang8::Recipe
  class BaseRecipe
    def initialize(*args)
      @quantity = args[0].is_a?(Hash) ? args[0] : args
    end

    def bake
      raise 'Not Implemented'
    end
  end

  class LoginRecipe < BaseRecipe
    def bake
      Lang8::Ingredient::Login.do(@quantity[:email], @quantity[:password])
    end
  end

  class PostJournalRecipe < BaseRecipe
    def bake
      Lang8::Ingredient::Login.do(email: @quantity[:email], password: @quantity[:password])
      Lang8::Ingredient::PostJournal.do(title: @quantity[:journal_title], body: @quantity[:journal_body])
    end
  end
end
