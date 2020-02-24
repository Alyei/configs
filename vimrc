" Show line numbers
set number

" Maximum width of tab character
set tabstop=4

" No spaces
set softtabstop=0 noexpandtab

" Size of indent
set shiftwidth=4

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim' | Plug 'itchyny/lightline.vim' | Plug 'tomtom/tcomment_vim' | Plug 'nathanaelkane/vim-indent-guides'
Plug 'dhruvasagar/vim-table-mode' | Plug 'sjl/badwolf'

call plug#end()
