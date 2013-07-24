function! lang8#post_journal#new() "{{{
endfunction"}}}

function! lang8#post_journal#post(count, line1, line2, ...)
  call lang8#ruby#initialize()
  let body = join(getline(a:line1, a:line2), "\n")

  let title = join(getline(a:line1, a:line1))
  let title = input('Title: ', title)
  let password = inputsecret('Input password : ')
  silent!
  ruby << EOF
  Lang8.configure do |c|
    # c.default_driver = :selenium
  end

  email = VIM.get('g:lang8_email_address')
  password = VIM.get('password')
  title = VIM.get('title')
  body = VIM.get('body')

  begin
    url = Lang8::Cook::PostJournal.cook(email: email, password: password, journal_title: title, journal_body: body).bake
    puts "Post: #{url}"
  rescue => e
    puts 'Error occured'
    puts e.message
  end

  url ||= ''
  VIM.let('url', url)
EOF

  call lang8#set_clipboard(url)
endfunction"}}}
