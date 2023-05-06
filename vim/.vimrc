set  rtp+=/usr/share/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set nu
syntax enable
set gfn=Monospace\ 10
" use spaces instead of tab
set expandtab
" indetLine(Linien die Einrückungen markieren)
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
set background=dark
set term=xterm-256color
" Airline --> statusbar
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
let g:airline#extensions#branch#enabled = 1
" MarkdownPreview
" " set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or empty for random
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" set default theme (dark or light)
" By default the theme is define according to the preferences of the system
let g:mkdp_theme = 'dark'
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
 Plugin 'iamcco/markdown-preview.nvim'
 Plugin 'Valloric/YouCompleteMe'
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
  Plug 'joshdick/onedark.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme onedark
