" ~/.vimrc
" Joseph Feldmeyer 



" ---- 1. Sanity Defaults ----
syntax on 

set noerrorbells 
set belloff=all                 " This worked for Mac 

" Tabs and spaces 
filetype plugin indent on
set tabstop=4                   " show existing tab with 4 spaces width
set shiftwidth=4                " when indenting with '>', use 4 spaces width
set expandtab                   " On pressing tab, insert 4 spaces

" Line numbers 
set number 
set relativenumber 

" Line functionality 
set nowrap 

" Search functionality 
set ignorecase                  " search pattern is not case sensitive
set smartcase                   " if search pattern contains capital letter, it is case sensitive
set incsearch 

" Backspace
set backspace=2                 " make backspace work like most other programs 

" Column 
set colorcolumn=80 
highlight ColorColumn ctermbg=0 guibg=lightgrey



" ---- 2. Vim-Plug ---- 
call plug#begin('~/.vim/plugged') 

Plug 'morhetz/gruvbox'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'vim-airline/vim-airline'

call plug#end() 



" ---- 3. Colorscheme ---- 
set background=dark 
colorscheme gruvbox 
" colorscheme dracula 
" let g:dracula_italic = 0        " Remove highlight issue for Dracula 



" ---- 4. Key-binding --- 
let mapleader = " " 




" ---- 5. Custom functions ---- 
 
" Python auto header function 
autocmd bufnewfile *.py so ~/.vim/python_header_template
autocmd bufnewfile *.py exe "1," . 10 . "g/File Name:.*/s//File Name: " .expand("%")
autocmd bufnewfile *.py exe "1," . 10 . "g/Creation Date:.*/s//Creation Date: " .strftime("%Y-%m-%d")
autocmd bufnewfile *.py execute "normal G$"




