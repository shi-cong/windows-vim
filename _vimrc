set titlestring=Lovexx
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$VIMRUNTIME/../_vim/bundle/Vundle.vim/
call vundle#begin('$VIMRUNTIME/../_vim/bundle/')
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'jedi-vim'
Plugin 'tagbar'
Plugin 'vim-airline'
Plugin 'vim-colorschemes'
Plugin 'real-asynrun'
Plugin 'Yggdroot/indentLine'
Plugin 'syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set nu
set sw=4 ts=4 sts=4 expandtab
set laststatus=2
set go=
" color solarized
color darkBlue
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 234)
set guifont=Consolas:h10
set lines=29 columns=105
set showcmd
set nobackup
set colorcolumn=82 
set cursorline
hi colorcolumn guibg=#FEA0FE
set hls
set noswapfile
set ignorecase
set linespace=0
set showmatch
hi cursor guibg=#FEA0FE
set enc=prc 
set fileencodings=prc,utf8
let NERDTreeIgnore=['\.pyc','\~$','\.swp'] 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:indentLine_color_gui = '#A4E57E'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set fileencoding=utf-8
set fileencodings=utf-8,gb18030,utf-16,big5
set autoindent cindent

map <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nmap <F5> :call Run()<CR>
