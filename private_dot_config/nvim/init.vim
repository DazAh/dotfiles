" Config File for vim

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf'
Plug 'ledger/vim-ledger'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

" CoC LSP/Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-python'


" Rust"
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'neoclide/coc-rls'
call plug#end()

map <C-c> :NERDTreeToggle<CR>

" General
set t_Co=256
set showmatch
set hlsearch
set incsearch
set spell spelllang=en_gb
set spelllang=en_gb
set nobackup
set nowritebackup
set updatetime=300
set cmdheight=2

" CoC Highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
