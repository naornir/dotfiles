augroup Elentok_Misc
  autocmd!
  autocmd FileType xml setlocal foldmethod=syntax
  autocmd VimEnter * set t_vb=
  "autocmd BufRead,BufEnter *.txt setlocal syntax=dtxt
  autocmd BufRead,BufEnter *.autoSetup setlocal syntax=xml
  autocmd BufRead,BufEnter *.xaml setlocal syntax=xml
  autocmd BufRead,BufEnter *.py setlocal ts=4 softtabstop=4 shiftwidth=4
  autocmd BufRead,BufEnter *.css setlocal foldmethod=marker foldmarker={,}
  autocmd BufRead,BufEnter *.scss setlocal foldmethod=marker foldmarker={,}
  autocmd BufRead,BufEnter *.applescript set filetype=applescript
  autocmd BufRead,BufEnter *.rxls setlocal filetype=ruby
  autocmd BufRead,BufEnter *.md,*.markdown setlocal filetype=ghmarkdown
  autocmd BufRead,BufEnter gitconfig setlocal filetype=gitconfig
  autocmd BufRead,BufEnter .gitconfig* setlocal filetype=gitconfig

  autocmd BufRead,BufEnter *.load setlocal filetype=fish

  " Javascript
  autocmd BufRead,BufEnter *.js setlocal nocindent smartindent
  autocmd BufRead,BufEnter *.json setlocal filetype=javascript
  autocmd BufRead,BufEnter Brewfile setlocal filetype=coffee
  autocmd BufRead,BufNewFile *.hamlc set ft=haml
  autocmd BufRead,BufNewFile *.hamljs set ft=haml

  " Autocomplete
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html setlocal autoindent omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType smarty setlocal autoindent
  autocmd FileType java setlocal foldmethod=syntax noexpandtab
  autocmd FileType ruby setlocal omnifunc=

  " Spell checking
  autocmd FileType gitcommit setlocal spell
  autocmd FileType gitcommit setlocal spellcapcheck=
  autocmd FileType ghmarkdown setlocal spell
  autocmd FileType markdown setlocal spell

  " UTF8
  autocmd FileType vim setlocal nobomb

  ".vimrc
  "autocmd BufWritePost .vimrc source %

  "snippets
  "autocmd BufWritePost *.snippets call ReloadAllSnippets()

  " Home file
  autocmd BufRead,BufEnter home.txt map <buffer> <c-cr> :call HomeExecute()<cr>

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  autocmd VimEnter * call PostStartupKeys()

  " remap <cr> in quickfix buffers
  autocmd BufRead * call RemapCrInQuickFixBuffers()

  " autocompile coffeescript
  autocmd BufWritePost *.coffee call CoffeeMake()

  " fix nerdtree width
  autocmd BufEnter * if exists("b:NERDTreeType") | call FixNERDTreeWidth() | endif

  if version >= 730
    autocmd VimLeavePre * SaveSession last
  end
augroup END

