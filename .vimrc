" ------------------------------------------------------------------------------
"
" Andrey Paramonov's Vim Configuration
"
" It's based on smart guys' configurations:
" http://github.com/derekwyatt/vim-config
" http://mislav.uniqpath.com/2011/12/vim-revisited
" http://stevelosh.com/blog/2010/09/coming-home-to-vim
" http://ciaranm.wordpress.com/2008/05/15/my-vimrc/
"
" ------------------------------------------------------------------------------

syntax on
filetype plugin indent on

set nocompatible
set encoding=utf-8
set modelines=0

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=4

" Enable a nice big viminfo file
set viminfo='1000,f1,:1000,/1000
set history=500

" Tabulation options
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation options for programming
set autoindent
set smartindent

" Show the current mode
set showmode

" Display incomplete commands
set showcmd

" Make sure that unsaved buffers that are to be put in the background are 
" allowed to go in there (ie. the 'must save first' error doesn't come up)
set hidden

" Make the command-line completion better
set wildmenu
set wildmode=list:longest

" Allow backspacing over indent, eol, and the start of an insert
set backspace=indent,eol,start

" Always put a status line in, even if there is only one window
set laststatus=2
set statusline=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]\ %{fugitive#statusline()}

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions+=$

" Show line numbers
set number

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" Search options
set ignorecase
set smartcase
"set gdefault
set incsearch
set showmatch
set hlsearch

"set path=.,~/projects/**

" ------------------------------------------------------------------------------
" Train myself not to use arrow keys
" ------------------------------------------------------------------------------

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" ------------------------------------------------------------------------------
" My custom settings
" ------------------------------------------------------------------------------

let mapleader = "," 

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

nnoremap <leader>a :Ack
nnoremap <leader>c y%
nnoremap <leader>x d%
nnoremap <leader>s :%s/

nnoremap ; : 

nnoremap <leader>v V`] 

" In normal mode, jj escapes
inoremap jj <ESC>

nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make <space> in normal mode go down a page rather than left a character
noremap <space> <C-f>

" Move up and down on a linewise basis
:nmap j gj
:nmap k gk

" Write the file you don't have permissions to
cnoremap sudow w !sudo tee % >/dev/null

" VimClojure
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#FuzzyIndent = 1

" ------------------------------------------------------------------------------
" GUI settings
" ------------------------------------------------------------------------------

if has("gui_running")
    set guioptions-=m       " get rid of menue
    set guioptions-=T       " get rid of toolbar
    set guioptions-=L       " get rid of left scrollbar
    set guioptions-=r       " get rid of right scrollbar
    set guioptions-=b       " get rid of bottom scrollbar
    set go-=L               " get rid of left split scrollbar
    set go-=r               " get rid of right split scrollbar
    colorscheme xoria256    " make sure you have this scheme in ~/.vim/colors
    if has("window")
        set guifont=lucida_console:h8
    elseif has("mac")
        set guifont=menlo:h12
    endif
    if !exists("g:vimrcloaded")
        winpos 0 0
        set lines=63        " make it full screen on my MacBook
        set columns=205
        let g:vimrcloaded = 1
    endif
else
    "set t_Co=256
    colorscheme github
endif

" Nice window title
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%f\                                              " file name
    set titlestring+=%h%m%r%w                                         " flags
    set titlestring+=\ -\ %{v:progname}                               " program name
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}  " working directory
endif

