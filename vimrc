"-------------------------------------------------------------------
" prerequired
"-------------------------------------------------------------------
" pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

"--------------------------------------------------------------------
" vim settings                                                      |
"--------------------------------------------------------------------
set backspace=indent,eol,start  " enable delete with backspace in insert mode
filetype on
filetype plugin on
filetype indent on
set incsearch
set ignorecase
set nocompatible				" compatible 
set wildmenu					" vim console autocomplete
syntax enable
syntax on

set background=dark
colorscheme solarized
set t_Co=256
set gcr=n-c-v:block-blinkon0
set gcr=i-ci:ver20-blinkwait700-blinkon800-blinkoff650

" gui options
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=T
set guioptions-=m

set laststatus=2				" show status bar
set ruler 					 	" show current postion
set number 						" show line number
set cursorline 					" highlight current line
set cursorcolumn				" highlight current column
set hlsearch					" hightlight search result
set nowrap 

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set foldmethod=syntax
set nofoldenable
set mouse=a

"--------------------------------------------------------------------
" key maps
"--------------------------------------------------------------------
let mapleader=";"  
nmap lb 0
nmap le $
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j
nmap <Leader>pa %
nmap <Leader>tn :tnext<CR>
nmap <Leader>tp :tprevious<CR>
nmap <Leader>ch :A<CR>
nmap <Leader>sch :AS<CR>
nnoremap <Leader>tl :TagbarToggle<CR> 
nnoremap <Leader>fl :NERDTreeToggle<CR>
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"--------------------------------------------------------------------
" plugins' settings
"--------------------------------------------------------------------
" neocomplete
let g:neocomplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType syntax setlocal omnifunc=syntaxcomplete#Complete

" powerline
let g:Powerline_colorscheme='solarized256'

" indent-guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" tagbar
let tagbar_right=1
let tagbar_width=32 
let g:tagbar_compact=0
let g:tagbar_autofocus=1

" nerdtree
let NERDTreeWinSize=40
let NERDTreeWinPos="left"
let NERDTreeShowHidden=0
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

"--------------------------------------------------------------------
" embedded scripts
"--------------------------------------------------------------------
