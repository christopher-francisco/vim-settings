set nocompatible              				" We want the latest Vim settings

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start				" Make backspace behave normally
let mapleader=','					" The default is \, but a comma is better
set number						" Show line number
set noerrorbells visualbell t_vb=			" No bells when pressing wrong key

set backupdir=~/.vim/backup//				" Put backup files out of the project root
set directory=~/.vim/swap//				" Put swap files out of the project root




"-------------------- Visuals --------------------
colorscheme atom-dark					" Set's the theme to gosukiwi/vim-atom-dark

set t_CO=256						" Use 256 colors on terminal Vim
set guifont=Fira_Code:h16				" Changes the font on Macvim
set macligatures					" We want pretty symbols, when available
set guioptions-=e					" We don't want Gui tabs.
set linespace=15					" Macvim line height

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=T					" Removes top toolbar

hi LineNr guibg=bg

" Fake a custom left padding for each windows.
" set foldcolumn=2
" hi foldcolumn guibg=bg

" Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg


"-------------------- Search --------------------
set hlsearch
set incsearch





"-------------------- Split Management --------------------
set splitbelow						" Make splits default to below...
set splitright						" And to the right. This feels more natural.

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l





"-------------------- Mappings --------------------
" Back to normal mode from insert mode
imap jj <esc>

" Make it easy to edit the .vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/snippets/

" Add highlight removal
nmap <Leader><space> :nohlsearch<cr>

nmap <Leader>f :tag<space>






"-------------------- Plugins --------------------
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"/
"/ NerdTree
"/
let NERDTreeHijackNetrw = 0

"Make NERDTree easier to toggle.
nmap <D-1> :NERDTreeToggle<cr>

"/
"/ Greplace.vim
"/
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'	" We want to use ag for the search




"-------------------- Auto-Commands --------------------

" Automatically source the .vimrc file on save

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup end





" Notes and Tips
" - Install CTags through homebrew. See https://gist.github.com/nazgob/1570678
"   if it doens't work
" - Press 'zz' to instatly center the line where the cursor is located.

