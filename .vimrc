" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('/Users/iagomileo/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'


" Language Support
"
" Elixir 
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

call plug#end()

" Basic config
set nu relativenumber

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab autoindent

" Searching
set showmatch incsearch hlsearch
nmap <space> :nohlsearch<cr>

" Appearance
set cursorline
set guicursor=i:ver25-iCursor

