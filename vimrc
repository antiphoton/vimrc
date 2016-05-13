set nocompatible
if has('gui_running')
    set background=light
else
    set background=dark
endif
syntax enable
color default
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
execute togglebg#map("<F5>")

if has('mouse')
    set mouse=a
endif

set expandtab
set tabstop=4
set shiftwidth=4
set number
set smartindent
set hlsearch
set autowrite
set autoread
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

