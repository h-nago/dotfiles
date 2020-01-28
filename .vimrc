autocmd!
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'chr4/nginx.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'chase/vim-ansible-yaml'
Plugin 'jwalton512/vim-blade'
Plugin 'posva/vim-vue'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/html5.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-rails'
Plugin 'othree/yajs.vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'hashivim/vim-hashicorp-tools'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set number
set cursorline
set cursorcolumn

" setting for scrooloose/nerdtree
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '>'

" set color
autocmd ColorScheme * highlight Visual term=reverse cterm=reverse ctermfg=193 ctermbg=16 gui=reverse guifg=#C4BE89 guibg=#000000
autocmd ColorScheme * highlight Comment ctermfg=215
colorscheme molokai

" backspace setting
set backspace=indent,eol,start

autocmd FileType ruby set dictionary=~/.vim/dict/ruby
autocmd FileType vue syntax sync fromstart
set clipboard+=unnamed
set noswapfile
