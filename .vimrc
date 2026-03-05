call plug#begin()

Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons' 
Plug 'tpope/vim-commentary'
Plug 'ghifarit53/tokyonight-vim'
Plug 'sainnhe/edge'
Plug 'sheerun/vim-polyglot'

" Pre instalacije instalirati sudo apt install nodejs npm
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

set number
set nocompatible

syntax on
set termguicolors


let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
color tokyonight

nnoremap <C-n> :NERDTreeToggle<CR>

" --- CoC CONFIGURATION ---
" Once CoC is installed, it is "empty". You need to tell it which languages you use.

" Open a file in Vim and run these commands based on what you code in:

" For Python: :CocInstall coc-pyright
" For Web (HTML/CSS/JSON): :CocInstall coc-html coc-css coc-json
" For C/C++: :CocInstall coc-clangd
" For Shell Scripts: :CocInstall coc-sh


" Use Tab to trigger completion and navigate through the list
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use Enter to select the completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Helper function for Tab mapping
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


