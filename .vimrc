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
call plug#end()
" colorscheme onedark
colorscheme wal

