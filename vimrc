" Configuration file for vim
let mapleader = ","
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let g:airline_powerline_fonts = 1
set linespace=0
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif

"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = '☰'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = 'Ξ'


"old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

autocmd vimenter * NERDTree
set laststatus=2

"pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

"nerdtree
nnoremap <leader>nt <Esc>:NERDTreeToggle<Cr>

"colorscheme
colorscheme jellybeans

"fugitive
nnoremap <leader>blame <Esc>:Gblame<Cr>

"easymotion
"nnoremap <leader>ef <Esc><Plug>(easymotion-bd-f)
"nnoremap <leader>ef <Esc><Plug>(easymotion-overwin-f)
map <Leader>ef <Plug>(easymotion-bd-f)


"airline
let g:airline_theme='papercolor'

"debug
nnoremap <leader>debug <Esc>:!python3 %<Cr>
"remove all break points
nnoremap <leader>rmbs <Esc>:g/pdb.set_trace/d<Cr>

if has('python')
  let g:jedi#force_py_version = 2
  let g:syntastic_python_python_exec = 'python2'
  let g:pymode_python = 'python2'
elseif has('python3')
  let g:jedi#force_py_version = 3
  let g:syntastic_python_python_exec = 'python3'
  let g:pymode_python = 'python3'
else
  let g:loaded_jedi = 1
endif

set nu
set rnu
set tabstop=2

