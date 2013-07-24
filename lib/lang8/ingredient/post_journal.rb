module Lang8::Ingredient
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
      page.current_url
    end
  end
end

