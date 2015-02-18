" Pathogen (installing stuff from .vim/bundle)
execute pathogen#infect()

" Usings 4 space indentation only
" http://tedlogan.com/techblog3.html
set smarttab
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

" If you type '#' when smartindent is on, it brings the cursor to the first
" column. I don't want that.
inoremap # X<BS>#

" UTF8 encoding
set encoding=utf-8

" Mouse support (in non gui mode)
set mouse=a

" Don't show whitespace as visible characters
set nolist

" Adding CtrlP - included by pathogen
"set runtimepath^=~/.vim/bundle/ctrlp.vim

" CtrlP shortcut
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" CtrlP opens files in new tabs
" https://github.com/kien/ctrlp.vim/issues/119
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

" Jedi-vim - included by pathogen
" set runtimepath^=~/.vim/bundle/jedi-vim/jedi_vim.vim
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 0

" Color scheme
color blackboard
hi Normal		ctermfg=254		ctermbg=234		cterm=none		guifg=#f6f3e8	guibg=#121212	gui=none

" Turn off MacVim toolbar
" http://vim.wikia.com/wiki/Hide_toolbar_or_menus_to_see_more_text
set guioptions-=T

" Don't autowrap lines
set textwidth=0
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=0

" Make tab completion show list of files
" http://stackoverflow.com/a/526940/137067
"set wildmode=longest,list,full
"set wildmenu
" set file completion to behave more like bash
set wildmenu
set wildmode=longest:full

" Don't keep swp files, since git keeps everything safe
set noswapfile

" dont wrap the lines by default
set nowrap
" Dont show *.pyc files in NERDTree
let NERDTreeIgnore=['\.pyc$']
" Make F1 do the same thing as ESC (prevents help typos)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" Make ; work as :
nnoremap ; :
" highlight search results
set incsearch
set showmatch
set hlsearch
" underline current line
set cursorline
set colorcolumn=79  " color the 79th column for line length reference
set laststatus=2    " always show the status line
set modelines=0 " prevents some security exploits

" Auto-trim whitespace on lines when saving files of certain types
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd FileType python,php autocmd BufWritePre <buffer> :%s/\s\+$//e
syntax on

" Autocompletions
"autocmd FileType python setlocal omnifunc=pysmell#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"let g:acp_behaviorPythonOmniLength = -1 

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" ignore case if all searched characters are lower or consider case if any of them is upper
set ignorecase
set smartcase
" always show line number
set ruler

" set the leader key to be , instead of \
let mapleader = ","

