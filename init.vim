" Neovim configuration by
" 		Filipe Herculano Rocha

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
Plug 'andreyorst/SimpleClangFormat.vim'
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
nnoremap <leader>nt1 :NERDTree ~/dmos-dmtdd/devel/dmos-twamp-responder/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt2 :NERDTree ~/dmos-dmtdd/devel/dmos-twamp-app/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt3 :NERDTree ~/dmos-dmtdd/devel/dmos-twamp-libs/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt4 :NERDTree ~/dmos-dmtdd/devel/dmos-twamp-controller/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt5 :NERDTree ~/dmos-dmtdd/devel/dmos-db-intf/<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt6 :NERDTree ~/Maratona/prova<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt7 :NERDTree ~/warsaw<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt8 :NERDTree ~/dmos-dmtdd/devel/dmos-tests-twamp<cr> :NERDTreeTabsOpen<cr>
nnoremap <leader>nt9 :NERDTree ~/dmos-dmtdd/devel/dmos-ip-application<cr> :NERDTreeTabsOpen<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <leader><c-t> :tabnew<cr>
nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>
nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left> :tabp<CR>
nnoremap <C-i> :ClangFormat<CR>

"------------------ Clang Format --------------------------------
let g:SimpleClangFormat#options = {
	\ "Language": "Cpp",
	\ "AccessModifierOffset": "-1",
	\ "ConstructorInitializerIndentWidth": "4",
	\ "AlignEscapedNewlinesLeft": "true",
	\ "AlignTrailingComments": "true",
	\ "AllowAllParametersOfDeclarationOnNextLine": "true",
	\ "AllowShortIfStatementsOnASingleLine": "false",
	\ "AllowShortLoopsOnASingleLine": "false",
	\ "AllowShortFunctionsOnASingleLine": "false",
	\ "AlwaysBreakTemplateDeclarations": "true",
	\ "AlwaysBreakBeforeMultilineStrings": "true",
	\ "BreakBeforeBinaryOperators": "true",
	\ "BreakBeforeTernaryOperators": "true",
	\ "BreakConstructorInitializersBeforeComma": "false",
	\ "BinPackParameters": "true",
	\ "ColumnLimit": "100",
	\ "ConstructorInitializerAllOnOneLineOrOnePerLine": "true",
	\ "DerivePointerBinding": "true",
	\ "ExperimentalAutoDetectBinPacking": "false",
	\ "IndentCaseLabels": "true",
	\ "MaxEmptyLinesToKeep": "1",
	\ "NamespaceIndentation": "None",
	\ "ObjCSpaceAfterProperty": "false",
	\ "ObjCSpaceBeforeProtocolList": "false",
	\ "PenaltyBreakBeforeFirstCallParameter": "1",
	\ "PenaltyBreakComment": "300",
	\ "PenaltyBreakString": "1000",
	\ "PenaltyBreakFirstLessLess": "120",
	\ "PenaltyExcessCharacter": "1000000",
	\ "PenaltyReturnTypeOnItsOwnLine": "200",
	\ "PointerBindsToType": "true",
	\ "SpacesBeforeTrailingComments": "2",
	\ "Cpp11BracedListStyle": "false",
	\ "Standard": "Auto",
	\ "IndentWidth": "4",
	\ "TabWidth": "8",
	\ "UseTab": "Never",
	\ "BreakBeforeBraces": "Stroustrup",
	\ "IndentFunctionDeclarationAfterType": "true",
	\ "SpacesInParentheses": "false",
	\ "SpacesInAngles": "false",
	\ "SpaceInEmptyParentheses": "false",
	\ "SpacesInCStyleCastParentheses": "false",
	\ "SpacesInContainerLiterals": "true",
	\ "SpaceBeforeAssignmentOperators": "true",
	\ "ContinuationIndentWidth": "4",
	\ "SpaceBeforeParens": "ControlStatements",
\}
