" XXX to use this config w/ neovim, copy/symlink it to .config/nvim/init.vim

" Initialize vim-plug.
call plug#begin('~/.local/share/nvim/plugged')

" My favorite color scheme.
Plug 'morhetz/gruvbox'

" My favorite way to navigate through files.
Plug 'scrooloose/nerdtree'

" This allows me to e.g. do press "<leader>gh" and open up the selected line
" as a GitHub permalink in the browser. "<leader>gb" to GitHub's blame view
" is useful, too.
Plug 'ruanyl/vim-gh-line'

" Vim Language Server Client that works with NeoVim.
" Make sure to have the Python Language Server installed as well.
" Run `pip install python-language-server` in the relevant virtual env
" and see https://github.com/palantir/python-language-server for more info.
Plug 'natebosch/vim-lsc'
call plug#end()

" Set the color scheme to gruvbox (https://github.com/morhetz/gruvbox).
colorscheme gruvbox
set background=dark

" XXX Keep the stuff below in sync w/ ~/.vimrc.

" Usings 4 space indentation for Python.
set expandtab
set smarttab
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Use 2 space indents for JS and LESS.
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype less setlocal ts=2 sts=2 sw=2

" By default, if you type '#' when smartindent is on, it brings the cursor to
" the first column. I don't want that.
inoremap # X<BS>#

" UTF8 encoding
set encoding=utf-8

" Mouse support (in non-GUI mode)
set mouse=a

" Don't show whitespace as visible characters
set nolist

" Don't wrap the lines by default
set nowrap

" Don't autowrap lines while typing
set textwidth=0

" Make tab completion show list of files
" http://stackoverflow.com/a/526940/137067
"set wildmode=longest,list,full
"set wildmenu
" set file completion to behave more like bash
set wildmenu
set wildmode=longest:full

" Don't keep swp files, since git keeps everything safe
set noswapfile

" Make ';' work as ':'
nnoremap ; :

" Highlight search results
set incsearch
set showmatch
set hlsearch

" Underline current line
set cursorline
set colorcolumn=79  " color the 79th column for line length reference
set laststatus=2    " always show the status line
set modelines=0 " prevents some security exploits

" Auto-trim whitespace on lines when saving files of certain types
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd FileType python,php,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

" Start the Python Language Server for Python files.
let g:lsc_server_commands = {'python': 'pyls -v --log-file ~/.vim/pyls.log'}
let g:lsc_enable_autocomplete = v:true
let g:lsc_auto_map = v:true
autocmd CompleteDone * silent! pclose

" Enable syntax highlighting.
syntax on

" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Ignore case if all searched characters are lowercase.
set ignorecase
set smartcase

" Set the leader key to be , instead of \
let mapleader = ","

" Make selecting and pasting (vp) not replace the paste buffer.
function! RestoreRegister()
    let @" = s:restore_reg
    return ''
endfunction

function! s:Repl()
    let s:restore_reg = @"
    return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()
