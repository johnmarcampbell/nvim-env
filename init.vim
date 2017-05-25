""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Vim UI .................. User interface behavior                    "
"   03. Custom Commands ......... Any custom command aliases                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Remap leader
let mapleader=","

if filereadable(glob('~/.config/nvim/pluginsettings.vim'))
    source ~/.config/nvim/pluginsettings.vim
endif

" Add all subdirectories of current directory to path
set path+=**
set wildignore+=*.bmp,*.gif,*.jpg,*.ico,*.png,*.swp

"Swapfiles, who even likes those?
set noswapfile
set undofile
set undodir=~/.config/nvim/undofiles

"Tab stuff
set tabstop=4 "Length of a tab
set shiftwidth=4 "Auto-indent length
set softtabstop=4 "Spaces when you hit tab key
set smartindent
set expandtab "Change tabs to spaces
"
"Mash 'jk' to leave interactive mode
inoremap jk <ESC>

"Ignores case unless search string is mixed case
set ignorecase
set smartcase

set gdefault "make replaces global by default

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme OceanicNext 

set nu rnu "Show relative line numbers
set hidden

set scrolloff=20

"Split stuff
nnoremap <C-j> <C-w><C-J>
nnoremap <C-k> <C-w><C-K>
nnoremap <C-l> <C-w><C-L>
nnoremap <C-h> <C-w><C-H>
set splitbelow
set splitright

" Normal mode arrow keys do tab manipulation
nnoremap <up> :tabnew <CR>
nnoremap <down> :tabclose <CR>
nnoremap <left> :tabprev <CR>
nnoremap <right> :tabnext <CR>
" <C-arrow keys> do buffer manipulation
nnoremap <C-up> :e <CR>
nnoremap <C-down> :bdelete <CR>
nnoremap <C-left> :bprevious <CR>
nnoremap <C-right> :bnext <CR>

" Disable arrow keys in other modes
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

"Fix regex handling
nnoremap / /\v
vnoremap / /\v

"Switch colon and semi-colon
nnoremap ; :
nnoremap : ;

"Disable the mouse, except for the scroll wheel
set mouse=a
nnoremap <ScrollWheelUp> 3<C-y>
nnoremap <ScrollWheelDown> 3<C-e>
nnoremap <LeftMouse> <nop>
inoremap <LeftMouse> <nop>
noremap <LeftMouse> <nop>

"Terminal Stuff
tnoremap jk <C-\><C-n>
nnoremap <leader>tt :terminal <CR>
nnoremap <leader>tp :terminal python3 <CR>
nnoremap <leader>tr :terminal root -l<CR>

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
