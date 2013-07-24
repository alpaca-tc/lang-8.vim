module Lang8::Ingredient
  module Login
    extend Capybara::DSL
    def self.do(email: pc_address, password: password)
      visit '/login'
      fill_in('username', with: email)
      fill_in('password', with: password)
      click_on('Log In')
    end
  end
end
