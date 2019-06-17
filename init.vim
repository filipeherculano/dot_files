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
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Lenovsky/nuake'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-rooter'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-signify'
Plug 'mfukar/robotframework-vim'
call plug#end()

"------------------ Indentation Options -------------------
set autoindent
set shiftround
set shiftwidth=4
set tabstop=4
set smartindent

"------------------ Search Options -------------------
set hlsearch
set ignorecase
set incsearch
set smartcase
set inccommand=split

"------------------ User Interface Options -------------------
set ruler
set number
set relativenumber
set noerrorbells
set mouse=a
set clipboard=unnamedplus

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
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let g:NERDTreeWinPos = "right"
let g:nuake_size = 0.3
let NERDTreeMapOpenInTab = '<ENTER>'

"------------------ Key Mappings --------------------------------
let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>nt1 :NERDTree ~/project/dmos-dmtdd/devel/dmos-twamp-responder/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt2 :NERDTree ~/project/dmos-dmtdd/devel/dmos-twamp-app/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt3 :NERDTree ~/project/dmos-dmtdd/devel/dmos-twamp-libs/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt4 :NERDTree ~/project/dmos-dmtdd/devel/dmos-twamp-controller/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt5 :NERDTree ~/project/dmos-dmtdd/devel/dmos-db-intf/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt6 :NERDTree ~/Maratona/prova<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt7 :NERDTree ~/warsaw<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt8 :NERDTree ~/project/dmos-dmtdd/devel/dmos-tests-twamp<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt9 :NERDTree ~/project/dmos-dmtdd/devel/dmos-ip-application<cr> :NERDTreeTabsOpen<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <leader><c-t> :tabnew<cr>
nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>
nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left> :tabp<CR>
