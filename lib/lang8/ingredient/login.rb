module Lang8::Ingredient
  module Login
    def self.do(username: username, password: password)
      agent = Lang8::Ingredient.agent
      path = "#{Lang8::Ingredient.root_path}/sessions/new"
      agent.post(path, {
        username: username,
        password: password
      })
    end
  end
end
