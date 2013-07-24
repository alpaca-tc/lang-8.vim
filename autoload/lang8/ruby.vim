function! lang8#ruby#initialize() "{{{
  if !has('ruby')
    return 0
  endif

  ruby << EOF
  plugin_current_dir = VIM.evaluate('g:lang8_root_dir')
  $:.unshift("#{plugin_current_dir}/lib")
  require 'vim'
  require 'lang8'
EOF
endfunction"}}}
