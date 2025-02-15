" SETTINGS

filetype on             
filetype plugin on     
filetype indent on

set encoding=utf-8
set number
set conceallevel=2
set tabstop=4
set shiftwidth=4
set expandtab

imap jj <Esc>

if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_open_on_warning = 0  

let g:UltiSnipsExpandTrigger       = '<C-Enter>'
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" CUSTOM COMMANDS

command! -nargs=* Py :w! !clear; python3 % <args>

" LANGUAGETOOL

map <F9> :w <bar> compiler vlty <bar> make <bar> :cw <cr><esc>
set spelllang=en_gb
let g:vimtex_grammar_vlty = {}
let g:vimtex_grammar_vlty.lt_directory = '~/LanguageTool'
let g:vimtex_grammar_vlty.server = 'my'
let g:vimtex_grammar_vlty.show_suggestions = 1
let g:vimtex_grammar_vlty.shell_options =
        \   ' --multi-language'
        \ . ' --packages "*"'
        \ . ' --equation-punctuation display'

" PLUGINS

call plug#begin()

Plug 'lervag/vimtex'
Plug 'sirver/ultisnips', { 'for': ['tex', 'snippets']}
Plug 'dylanaraps/wal.vim'
Plug 'dpelle/vim-LanguageTool'

call plug#end()

colorscheme wal

