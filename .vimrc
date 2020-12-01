set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mhinz/vim-startify'
Plugin 'mhinz/vim-signify'
Plugin 'preservim/nerdtree'
Plugin 'elzr/vim-json'

"color schemas
Plugin 'sainnhe/gruvbox-material'
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'the31k/vim-colors-tayra'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set t_Co=256
syntax on
set number

" Add sources root directory to path
if exists("g:ya_vim#arcadia_root")
    exe "set path+=" . g:ya_vim#arcadia_root
endif


let g:sh_noisk="yes"

" Don't unload buffers when we swith to another buffer
" It is very useful option for YouCompleteMe plugin, which allows you to keep
" complitions when you travel throw the buffers.
" Case: Open some.cpp; run :YcmForceCompileAndDiagnostics; work with YCM;
" switch to other file; then return to some.cpp and all complitions are
" allowed. See :h hidden for more information
set hidden

" Size of tab
set tabstop=4
" Indents width
set shiftwidth=4
" expand tabs to spaces
set expandtab

" smart autoindenting when starting a new line.  Works for C-like
" programs, but can also be used for other languages
set smartindent
" Smart indents in .py files
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
" Copy indent from current line when starting a new line
set autoindent


" Highlighting search results
set hlsearch

" Show invisible characters but no end of line, show trailing spaces as '.'
set list
set listchars=trail:.

set backspace=indent,eol,start

" Some speedup
" Maximum column in which to search for syntax items
set synmaxcol=200
" A fast terminal
set ttyfast

if !has('nvim')
    " Maximum number of lines to scroll the screen
    set ttyscroll=3
endif

" The screen will not be redrawn while executing macros, registers and other
" commands that have not been typed
set lazyredraw

" Enhanced command complition (see :h<tab>)
set wildmenu
set wcm=<TAB>

" Editor GUI options
set colorcolumn=120

" Editing mode mappings
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeFind<CR>
nnoremap <F12> :YcmCompleter GoTo<CR>

let g:ycm_confirm_extra_conf = 0
let g:vim_json_syntax_conceal = 0

colorscheme gruvbox-material
