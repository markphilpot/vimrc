" ============ Vundle ================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jreybert/vimagit.git'

" Generic Programming Support 
Plugin 'Townk/vim-autoclose'
Plugin 'vim-syntastic/syntastic'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'

" Theme
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ============ Indentation =============
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" ============ General =================
set autoread

set wildmenu                " visual autocomplete for command menu
set wildignore=*.o,*~,*.pyc,.DS_Store

set encoding=utf8

set nobackup
set noswapfile

set mouse=a

" ============ Syntax ==================
syntax on
syntax enable

set number

" Show matching brackets and blink 2 tenths of second
set showmatch
set mat=2

" ============ Language Specific =======
autocmd BufWritePre *.py normal m`:%s/\s\+$//e`
let python_highlight_all = 1

autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" ============ Solarized ===============
set background=dark
colorscheme solarized

set laststatus=2

" ============ Shortcuts ================
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
map <C-y> "*y           " Copy selection to system clipboard (requires +clipboard)

" ============ Trial ==========
set cursorline          " highlight current line
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
let mapleader=","       " leader is comma

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" open ag.vim
nnoremap <leader>a :Ag 

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

nnoremap <leader>gb :Gblame<CR>
set backspace=indent,eol,start

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Reference
"
" :set number/nonumber
" :so % " Reload vimrc
