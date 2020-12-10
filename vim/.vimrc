call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline' 
"colorschemes
Plug 'morhetz/gruvbox'

call plug#end()

syntax on
let g:mapleader=','
colorscheme gruvbox
set background=dark
set number
set expandtab
set tabstop=2
set hlsearch
set incsearch

"mapping
map <C-n> : NERDTreeToggle<CR>
map <Leader>  <Plug>(easymotion-prefix)
