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
let g:UltiSnipsExpandTrigger       = '<Tab>'
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" CUSTOM COMMANDS

command! -nargs=* Py :w! !clear; python3 % <args>

" PLUGINS

call plug#begin()

Plug 'lervag/vimtex', { 'for': 'tex'}
Plug 'sirver/ultisnips', { 'for': ['tex', 'snippets']}
Plug 'dylanaraps/wal.vim'

call plug#end()

colorscheme wal
