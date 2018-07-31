syntax on
set number
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
set backspace=2

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'joshdick/onedark.vim'
Plug 'rodjek/vim-puppet'
Plug 'jiangmiao/auto-pairs'
Plug 'dylanaraps/wal.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
" NERDTree
" auto load NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close vim if nerdtree is the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden= 1
let NERDTreeShowBookmarks = 1

let g:ctrlp_show_hidden = 1

silent! colorscheme onedark
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
" set laststatus=2
