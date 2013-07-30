module Lang8::Recipe
  class BaseRecipe
    attr_accessor :blended 

    def initialize(*args)
      @quantity = args[0].is_a?(Hash) ? args[0] : args
    end

    class << self
      attr_accessor :blended
      def blend_in(*ingredients)
        @blended ||= [] 
        ingredients.each { |ingredient| @blended << ingredient }
      end
    end

    def bake
      page = nil
      self.class.blended.each do |ingredient|
        page = cook_ingredient(ingredient)
      end

      page
    end

    private
    def cook_ingredient(ingredient)
      name_of_const = ingredient.to_s.camelize
      model = Lang8::Ingredient::const_get(name_of_const)
      method = model.method(:do)
      params = method.parameters.map { |v| v[1] }
      to_give_params = params.each_with_object({}) { |key, hash| hash[key] = @quantity[key] }
      model.do(to_give_params)
    end
  end
end
