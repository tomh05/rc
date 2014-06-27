set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set viewoptions=cursor,folds,slash,unix 

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " ...
endif

syntax on
set t_Co=16
set background=dark
colorscheme solarized


 " enable mouse
set mouse=a


nnoremap Q <nop>
set showbreak=↪
set formatoptions-=r
set formatoptions-=o

imap jj <Esc>
nmap j gj
nmap k gk

set ignorecase " searching

set wrap " wrap words
set linebreak
set nolist

" syntax folding, though only when in normal mode
set foldmethod=syntax
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif


" move C-n completeion to C-space
if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    inoremap <C-Space> <C-n>
else " no gui
  if has("unix")
    inoremap <Nul> <C-n>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif
