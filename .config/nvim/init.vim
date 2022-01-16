call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lambdalisue/fern.vim'
call plug#end()

" Ctrl+nでファイルツリーを表示/非表示する
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>

" coc
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
" Symbol renaming.
nmap <silent> rn <Plug>(coc-rename)

" Coc Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <Leader>f <Plug>(coc-format-selected)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
nmap <silent> fm :Format <CR>

autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
