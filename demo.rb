$: << File.expand_path('./lib')

require 'lang8'

Lang8.configure do |c|
  # c.lang8_host = 'http://localhost:3000'
end

default_params = {
  username: 'mon03g@yahoo.co.jp', 
  password: ''
}
default_params = {
  username: 'en_ja_31@lang-8.com', 
  password: 'password'
}

journal_params = {
  theme_id: "",
  publish: 1,
  body: "body yes",
  subject: "subject",
}

# page = Lang8::Chef::Login.cook(default_params)
page = Lang8::Chef::PostJournal.cook(default_params.merge(journal_params))
