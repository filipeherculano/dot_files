"---------------- Vim Plugin Section -------------------
" Install dependencies with 
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()

"------------------ Indentation Options -------------------
set autoindent
set shiftround
set shiftwidth=8
set smartindent

"------------------ Search Options -------------------
set hlsearch
set ignorecase
set incsearch
set smartcase
set inccommand=split
set autochdir

"------------------ User Interface Options -------------------
set ruler
set number
set relativenumber
set noerrorbells
set mouse=a

"------------------ Code Folding Options -------------------
set foldmethod=manual
set foldnestmax=4
set nofoldenable
colorscheme gruvbox
set background=dark

"------------------ Miscellaneous Options -------------------
set confirm
set history=1000
set noswapfile
set spell
set showmatch
let g:ag_working_path_mode="r"

"------------------ Key Mappings --------------------------------
let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
