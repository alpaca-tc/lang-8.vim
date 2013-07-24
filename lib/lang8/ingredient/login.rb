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

  module PostJournal
    extend Capybara::DSL
    def self.do(title: title, body: body)
      visit '/'
      click_link 'Post'
      within '#form' do
        fill_in('journal_body', with: body)
        uncheck('post_to_twitter')
        click_on('Publish')
      end
    end
  end
end
