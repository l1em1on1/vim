runtime! debian.vim

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'cakebaker/scss-syntax.vim'

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on
highlight Comment ctermfg=LightCyan
set number
set showcmd
set ls=2
set hlsearch
set ruler
set title
set ttyfast
set whichwrap=b,s,h,l,<,>,[,]
set cindent
set smartindent
set autoindent
set cinkeys=0{,0},:,0#,!^F
set cot+=menuone
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

let php_sql_query=1                                                                                        
let php_htmlInStrings=1
set directory=~/.vim_tmp
set backupdir=~/.vim_tmp
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

if has("multi_byte")
	if &termencoding == ""
		let &termencoding = &encoding
	endif
	set encoding=utf-8
	setglobal fileencoding=utf-8
	"setglobal bomb
	set fileencodings=ucs-bom,utf-8,latin1
endif

" Keyboard mappings
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
map <silent> <C-N> :silent noh<CR> " turn off highlighted search
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file

map ,n :tabn<cr>      " tab next
map ,p :tabp<cr>      " tab previous
" ----- write out html file
map ,h :source $VIM/vim71/syntax/2html.vim<cr>:w<cr>:clo<cr>

map <c-space> <c-x><c-o>

