syntax on
set number

set relativenumber

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set formatoptions-=cro
set splitbelow splitright

set ignorecase
set smartcase

set wrap
set textwidth=79
set formatoptions=qrnl

set incsearch

set smartindent
set noswapfile
set nobackup

" for dev-icons
set encoding=UTF-8

if empty(glob('~/.vim/autoload/plug.vim'))
     silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim    
     autocmd VimEnter * PlugInstall --sync | source $MYVIMRC 
endif

call plug#begin('~/.vim/plugged')

" do :colorscheme 'colorscheme name' for colorschemes
Plug 'flazz/vim-colorschemes'
"Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
Plug 'https://github.com/pangloss/vim-javascript'
" Syntax highlighting
Plug 'dense-analysis/ale'
" Code completion
" do :CocInstall coc-tsserver for installing js code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Statusbar
Plug 'itchyny/lightline.vim'
" File finder
Plug 'vifm/vifm.vim'
" Tabs
Plug 'ap/vim-buftabline'
" dev-icons
Plug 'ryanoasis/vim-devicons'
" autocomplete brackets 
Plug 'jiangmiao/auto-pairs'

call plug#end()

let g:gruvbox_guisp_fallback = "bg"

colorscheme gruvbox
set background=dark

set statusline=%F[%L][%{&ff}]%y[%04l,%04v]

set guioptions=aci

setlocal spell spelllang=en_us
setlocal spell!

set nomodeline

" keybind space + n for opening / closing nerdtree
map <space>n :NERDTreeToggle<cr>
" keybind space + q for closing vim
nmap <space>q :q<cr>
" keybind space + w for write and closing vim
nmap <space>w :wq<cr>

" NERDTree configs
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'
let g:NERDTreeWinSize=20

" reference : https://theselfhostingblog.com/posts/configuring-vim-for-node-js-development/
