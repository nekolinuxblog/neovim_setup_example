
if &compatible
  set nocompatible
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


" plugin list

call plug#begin('~/.vim/plugged')

  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEY MAP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jj <Esc>
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set incsearch
set hlsearch

set shiftround
set infercase
set hidden
set switchbuf=useopen
set showmatch
set matchtime=1
set backspace=start,eol,indent
set isk+=-

set nowritebackup
set nobackup
set noundofile

set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set smarttab

set wildmenu
set showcmd

set number
set wrap
set textwidth=0
"set colorcolumn=80

set clipboard=unnamedplus

set cursorline


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><C-e> :NERDTreeToggle<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
map <C-p> <Plug>AirlineSelectPrevTab
map <C-n> <Plug>AirlineSelectNextTab

