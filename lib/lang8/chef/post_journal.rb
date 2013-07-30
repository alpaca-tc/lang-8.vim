module Lang8::Chef
  class PostJournal < Base
    private
    def set_recipe 
      @recipe = ::Lang8::Recipe::PostJournalRecipe
    end
  end
end
