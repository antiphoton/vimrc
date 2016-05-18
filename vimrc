set nocompatible
if has('gui_running')
    set background=light
else
    set background=dark
endif
if has("unix")
    if has("x11") || $TERM=="xterm-256color"
        set t_Co=256
        let g:solarized_termcolors=256
        let g:solarized_bold=1
        let g:solarized_underline=1
        let g:solarized_italic=1
        let g:solarized_visibility="low"
    endif 
endif
colorscheme solarized
syntax enable

if has('mouse')
    set mouse=a
endif
"indent
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
filetype indent on

"appearance

set number
set ruler
set scrolloff=3
set cursorline

"search
set ignorecase
set smartcase
set incsearch
set hlsearch

"bar
set wildmenu
set wildignore=*~
set cmdheight=2

"file
set ff=unix
set ffs=unix
set autowrite
set autoread

set list
set history=500

nmap j gj
nmap k gk
nmap <LEFT> <C-W>h
nmap <RIGHT> <C-W>l
nmap <UP> <C-W>k
nmap <DOWN> <C-W>j
nmap <C-LEFT> <C-W>>
nmap <C-RIGHT> <C-W><
nmap <C-UP> <C-W>+
nmap <C-DOWN> <C-W>-
vmap <C-C> "+y
nmap <C-C> "+yy
imap <C-V> <ESC>"+p<ESC>a
nmap <C-B> Iscale=32;<ESC>:. !bc -l<CR>
vmap <C-B> s<CR>scale=32;<CR><ESC>k$p:. !bc -l<CR>JkJ
autocmd FileType javascript set foldmethod=indent
filetype plugin indent on
nnoremap <F7> :make<CR>
nnoremap <F5> :e % <CR>
autocmd FileType c nnoremap <F5> :!./a.out <CR>
autocmd FileType cpp nnoremap <F5> :!./a.out <CR>
autocmd FileType fortran nnoremap <F5> :!./a.out <CR>
autocmd FileType perl nnoremap <F5> :!perl % <CR>
autocmd FileType gp nnoremap <F5> :!gnuplot % <CR>
autocmd FileType javascript nnoremap <F5> :!node % <CR>
autocmd FileType python nnoremap <F5> :!python % <CR>
autocmd FileType sh nnoremap <F5> :!bash % <CR>
autocmd Filetype gitcommit setlocal spell textwidth=72


