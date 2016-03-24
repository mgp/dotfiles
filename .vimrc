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
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Open NERDTree with Ctrl+N.
map <C-n> :NERDTreeToggle<CR>
" Close vim if the only window left open is a NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Shorten pause when leaving insert mode.
set timeoutlen=50
" Show vim-airline before first split.
set laststatus=2

" Show Powerline font symbols.
let g:airline_powerline_fonts=1


" Use two-space indentation.
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
au BufWinEnter,BufNewFile * silent tab

" Highlight trailing whitespace.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Highlight text that exceeds 100 columns.
set textwidth=100
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)

" Highlight the 80th column.
" set colorcolumn=80

" Only refresh Ctrl-P results every 100ms.
let g:ctrlp_lazy_update=100
" Faster indexing for Ctrl-P.
let g:ctrlp_user_command = 'find %s -type f | egrep -iv "(\.(eot|gif|gz|ico|jpg|jpeg|otf|png|psd|pyc|svg|ttf|woff|zip)$)|(/\.)|((^|\/)tmp\/)"'


syntax on
set number

set encoding=utf-8
