set encoding=utf-8
set t_Co=256
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'mkitt/tabline.vim'
Plugin 'ervandew/supertab'
"Plugin 'sirver/ultisnips'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'gabesoft/vim-ags'
" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endi

" NERDTree {{{
nmap <silent> <F3> :NERDTreeToggle<CR>
" }}}
"
"
"
set relativenumber 
set number   

syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme gruvbox


set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*.war,*.gz,*.jar,*/target/*,*/build/*
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|so|dll)$',
\ 'link': 'some_bad_symbolic_links'
\ }


let g:airline_theme='light'
let g:airline#extensions#tabline#enabled = 1
 " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

let mapleader = ","

set tabstop=2
set expandtab
set autoindent
set cursorline
set showmatch  
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldmethod=indent
set ts=2 sts=2 sw=2

nnoremap <space> za
nnoremap <leader><space> :nohlsearch<CR>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


set hidden
nnoremap <F7> :bprevious<CR>
nnoremap <F8> :bnext<CR>
nnoremap <F9> :bd<CR>
nnoremap <C-t> :enew<CR>

au BufNewFile,BufRead *.gsp set filetype=html

set laststatus=2
set guifont=Inconsolata-g\ for\ Powerline:h12


set omnifunc=syntaxcomplete#Complete
