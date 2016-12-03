set nocompatible              				" We want the latest Vim settings

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start				" Make backspace behave normally.
let mapleader=','					" The default is \, but a comma is better.
set number						" Show line number.
set noerrorbells visualbell t_vb=			" No bells when pressing wrong key.
set autowriteall 					" Automatically write the file when switching buffers.
set complete=.,w,b,u 					" Set our desiring autocompletion matching.
set tabstop=8                                           " The width of the tab key
set expandtab                                           " Use spaces instead of tabs
set softtabstop=4                                       " Width of indent in insert mode
set shiftwidth=4                                        " Width of indent in normal mode
set linespace=15                                        " Macvim line height
set nowrap

set backupdir=~/.vim/backup//				" Put backup files out of the project root.
set directory=~/.vim/swap//				" Put swap files out of the project root.




"-------------------- Visuals --------------------
colorscheme atom-dark					" Set's the theme to gosukiwi/vim-atom-dark

set t_CO=256						" Use 256 colors on terminal Vim
set guifont=Fira_Code:h16				" Changes the font on Macvim
set macligatures					" We want pretty symbols, when available
set guioptions-=e					" We don't want Gui tabs.
set guioptions-=l                                       " Disable GUI scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R

hi LineNr guibg=bg

" Fake a custom left padding for each windows.
" set foldcolumn=2
" hi foldcolumn guibg=bg

" Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg





"-------------------- Search --------------------
set hlsearch                                            " Highlight all matched terms.
set incsearch                                           " Incrementally highlight as we type.





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

" Quickly browse any tag/symbol in the project.
" Tip: run `ctags -R` to regenerate the index.
nmap <Leader>f :tag<space>

" Sort PHP use statements
" See: http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>





"-------------------- Plugins --------------------
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:20,results:20'

nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"/
"/ NerdTree
"/
let NERDTreeHijackNetrw = 0                             " Prevent NERDTree to conflict with vinegar.vim

"Make NERDTree easier to toggle.
nmap <D-1> :NERDTreeToggle<cr>

"/
"/ Greplace.vim
"/
set grepprg=ag                                          " Use Ag for search

let g:grep_cmd_opts = '--line-numbers --noheading'

"/
"/ vim-php-cs-fixer.vim
"/
let g:php_cs_fixer_level = "psr2"

nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"/
"/ pdv
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"/
"/ Ultisnips
"/
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"





"-------------------- Auto-Commands --------------------
" Automatically source the .vimrc file on save

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup end





"-------------------- Functions --------------------

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>'

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>






" Notes and Tips
" - Install CTags through homebrew. See https://gist.github.com/nazgob/1570678
"   if it doens't work
" - Press 'zz' to instatly center the line where the cursor is located.

