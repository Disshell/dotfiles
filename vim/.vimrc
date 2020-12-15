call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
let NERDTreeShowHidden=1
map <Leader>  <Plug>(easymotion-prefix)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

"functions
function! WinMove(key)
   let t:curwin = winnr()
   exec "wincmd ".a:key
   if (t:curwin == winnr())
      if (match(a:key,'[jk]'))
         wincmd v
      else
         wincmd s
      endif
      exec "wincmd ".a:key
   endif
endfunction
