set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py 
			\ set tabstop=4

			\ set softtabstop=4

			\ set shiftwidth=4

			\ set expandtab

			\ set autoindent

			\ set fileformat=unix

			"\ set textwidth=79

au BufNewFile,BufRead *.js,*.html,*.css 
            \set tabstop=2

            \ set softtabstop=2

            \ set shiftwidth=2

Plugin 'vim-scripts/indentpython.vim'

set encoding=utf-8

"Bundle 'Valloric/YouCompleteMe'

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"Plugin 'scrooloose/syntastic'

"Plugin 'nvie/vim-flake8'

" let python_highlight_all=1
syntax enable
syntax on

"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'

"if has('gui_running')
set background=dark
colorscheme solarized
"else
"let g:solarized_termtrans=1
"colorscheme SolarizedDark_modified
"endif

"call togglebg#map("<F5>")
set nu
