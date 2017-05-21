"  Source plug.vim explicity - sometimes a given version of nvim has trouble
"  finding it
source ~/.config/nvim/autoload/vim-plug/plug.vim

" Install plugins
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'mhartington/oceanic-next'
call plug#end()

" Plugin-specific settings

"vim-fugitive
nnoremap <leader>gs :Gstatus <cr>
nnoremap <leader>gc :Gcommit <cr>
nnoremap <leader>gd :Gdiff <cr>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
