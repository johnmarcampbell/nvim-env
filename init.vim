""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Vim UI .................. User interface behavior                    "
"   03. Custom Commands ......... Any custom command aliases                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if filereadable(glob('~/.config/nvim/pluginsettings.vim'))
    source ~/.config/nvim/pluginsettings.vim
endif

"Remap leader
let mapleader=","

" Add all subdirectories of current directory to path
set path+=**
set wildignore+=*.bmp,*.gif,*.jpg,*.ico,*.png,*.swp

"Swapfiles, who even likes those?
set noswapfile
set undofile
set undodir=~/.config/nvim/undofiles
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme monokai 

"Mash 'jk' to leave interactive mode
inoremap jk <ESC>

set nu rnu "Show relative line numbers
set hidden

set scrolloff=20
"
"Split stuff
nnoremap <C-j> <C-w><C-J>
nnoremap <C-k> <C-w><C-K>
nnoremap <C-l> <C-w><C-L>
nnoremap <C-h> <C-w><C-H>
set splitbelow
set splitright

"Turns off arrow keys, to enforce using hjkl
nnoremap <up> :tabnew <CR> :ls <cr>
nnoremap <down> :tabclose <cr>
nnoremap <left> :tabprev <CR>
nnoremap <right> :tabnext <CR>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
"
"Switch colon and semi-colon
nnoremap ; :
nnoremap : ;


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Custom Commands                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Write buffer
nnoremap <leader>w :w <cr>
"Write buffer and quit
nnoremap <leader>qw :wq <cr>
"No, really quit!
nnoremap <leader>qq :q! <cr>
"Open current file in new vertical split and switch to it
nnoremap <leader>sv <C-w>v<C-w>l
"Open current file in new horizontal split and switch to it
nnoremap <leader>sh <C-w>s<C-w>l
"Edit vimrc
nnoremap <leader>v :e $MYVIMRC <cr>
"Source vimrc
nnoremap <leader>so :source $MYVIMRC <cr>
"Display buffer list and prepare to switch
nnoremap <space> :ls <cr>
"Un-hilight search results
nnoremap <leader>n :noh <cr>

"rot13 the file
noremap <Leader>r mzggg?G`m
"Make
nnoremap <Leader>m :make<cr>

"Insert date/time
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
