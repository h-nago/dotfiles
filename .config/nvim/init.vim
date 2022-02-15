set clipboard=unnamed
set number
set expandtab
set tabstop=2
set shiftwidth=2

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lambdalisue/fern.vim'
Plug 'brooth/far.vim'
Plug 'vim-latex/vim-latex'
call plug#end()

" Ctrl+nでファイルツリーを表示/非表示する
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>

" coc
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
" Symbol renaming.
nmap <silent> rn <Plug>(coc-rename)
" Format
nmap <silent> fm :call CocAction('format')<CR>
" typescript linux
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" Tex Compiler
let g:Tex_CompileRule_pdf = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
