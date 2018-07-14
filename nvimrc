" menu
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'godoctor/godoctor.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
Plug 'jodosha/vim-godebug' " Debugger integration via delve
Plug 'scrooloose/nerdtree'
call plug#end()


" file explorer
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" go 
let g:go_fmt_command = "goimports"
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1 " highlight same var
let g:go_fmt_command = "goimports"
let g:deoplete#enable_at_startup = 1 " turn on autocompletion
let g:go_addtags_transform = "snakecase" " json tags pref

set clipboard+=unnamedplus
set number
set backspace=indent,eol,start
set encoding=utf-8
set autowrite
set tabstop=4
set autoindent                  " Enable Autoindent
set incsearch                   " Shows the match while typing          
set hlsearch                    " Highlight found searches              
set noerrorbells                " No beeps
set noswapfile                  " Don't use swapfile

