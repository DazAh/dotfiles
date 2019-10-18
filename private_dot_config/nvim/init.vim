" Config File for vim

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf'
Plug 'ledger/vim-ledger'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
" Rust"
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'neoclide/coc-rls'
" Plug 'ycm-core/YouCompleteMe'
call plug#end()

map <C-c> :NERDTreeToggle<CR>
