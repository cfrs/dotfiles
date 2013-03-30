" be vim not vi
set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

runtime macros/matchit.vim

set wildmenu
set wildmode=list:longest

" terminal stuff
if match($TERMCAP, 'Co#256:') == 0 || match($TERMCAP, ':Co#256:') > 0
  set t_Co=256
endif

set ttymouse=xterm2
set mouse=a

if match(&term, 'screen') == 0
  let &titlestring='vim::' . expand("%:t")
  set t_ts=ESCk
  set t_fs=ESC\
  set title
endif

set ttyfast
set noerrorbells
set visualbell t_vb=

" powerline stuff
let g:Powerline_symbols = 'fancy'
set laststatus=2

" syntax/autoindent
syntax on
colorscheme zenburn
filetype plugin indent on
set autoindent
set smartindent
set smarttab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set shiftround
set ttyfast
set noerrorbells
set visualbell t_vb=

" powerline stuff
let g:Powerline_symbols = 'fancy'
set laststatus=2

" syntax/autoindent
syntax on
colorscheme zenburn
filetype plugin indent on
set autoindent
set smartindent
set smarttab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set nostartofline

" <3 undo
set undolevels=1000

" complete all the things
" set complete=.,w,b,u,U,t,i,d

" be lazy
" :nnoremap <esc> :noh<return><esc>
" nore ; :
" nore , ;

" be neat and tidy!
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set viminfo=

" keybinds
" always jump to line AND column
nnoremap ' `
nnoremap ` '
" NERDTree
map <F1> :NERDTreeToggle<CR>
