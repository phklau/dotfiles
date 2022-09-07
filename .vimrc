set  rtp+=/usr/share/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set nu
syntax enable
set gfn=Monospace\ 10
" indetLine(Linien die Einrückungen markieren)
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
colorscheme atom-dark-256
set background=dark
set term=xterm-256color
" Airline --> statusbar
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'
let g:airline#extensions#branch#enabled = 1
"Debugger
let g:vimspector_enable_mappings = 'HUMAN'
" Vundle Plugin Manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
 Plugin 'joshdick/onedark.vim'
 Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
 Plugin 'tpope/vim-surround'
call vundle#end()
filetype plugin indent on

" Vim Plug
call plug#begin()
	Plug 'preservim/NERDTree'
	Plug 'tmsvg/pear-tree'
	Plug 'joshdick/onedark.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ryanoasis/vim-devicons'
	Plug 'Yggdroot/indentLine'
	Plug 'sheerun/vim-polyglot'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
