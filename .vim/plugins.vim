filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'SirVer/ultisnips'
Plugin 'VundleVim/Vundle.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'                  " Don't really like this one, can we find an alternative?
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'skwp/greplace.vim'
Plugin 'tobyS/pdv'
Plugin 'tobyS/vmustache'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-scripts/Align'
Plugin 'vim-syntastic/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

