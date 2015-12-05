" ---- vundle configurations ----
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" For Windows
" set rtp+=~/vimfiles/bundle/Vundle.vim
" let path='~/vimfiles/bundle'
" call vundle#begin(path)


" Plugins...

" Plugin for colorscheme
"""
" Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
"""

" fast file navigation (must have vim plugin)
Plugin 'kien/ctrlp.vim'

" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'gmarik/Vundle.vim'

Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'nvie/vim-flake8'
Plugin 'bling/vim-airline'

" Plugins for HTML
Plugin 'othree/html5-syntax.vim'
Plugin 'othree/html5.vim'

" Plugins for JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'heavenshell/vim-jsdoc'

" Plugins for nodejs
Plugin 'marijnh/tern_for_vim'
Plugin 'moll/vim-node'

" Plugin for Git integration
Plugin 'tpope/vim-fugitive'

" plugins for vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'digitaltoad/vim-jade'
" --
"

"Plugins for erlang
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-runtime'

" Plugins for elixir lang
Plugin 'elixir-lang/vim-elixir'


"Plugins for Clojure lang
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'


call vundle#end()
" ---- /vundle configurations/ ----


set foldmethod=indent
set foldlevel=99

" setting <leader> key to comma
let mapleader = ","

" for Gdiff vertical open
set diffopt+=vertical

" show current line absolute number
" show relative line numbers on bot and top
set relativenumber
set number

" always display the statusline
set laststatus=2

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" tab configuration
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" word wrap
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

set backspace=indent,eol,start

" indentation
set autoindent

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" to easily move though windows
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

" gundo plugin shortcut
map <leader>G :GundoToggle<CR>

" NERDTree plugin shortcut
map <C-n> :NERDTreeToggle<CR>

" jedi-vim configuration
let g:jedi#popup_on_dot = 0

" delimitMate configuration


syntax on " syntax highlighting
filetype on " try to detect filetypes

" use python instead of python3 for tern support
" if(has("python"))
"     " enable tern shortcuts
"     let g:tern_map_keys=1
"     map <leader>td :TernDoc<CR>
"     map <leader>tb :TernDocBrowse<CR>
"     map <leader>tt :TernType<CR>
"     map <leader>tD :TernDef<CR>
"     map <leader>tpd :TernDefPreview<CR>
"     map <leader>tsd :TernDefSplit<CR>
"     map <leader>ttd :TernDefTab<CR>
"     map <leader>tr :TernRefs<CR>
"     map <leader>tR :TernRename<CR>
" endif

if (has("python3"))
    let g:jedi#force_py_version = 3
endif

colorscheme 256-jungle

" set colorscheme to solarized
" (make sure to install altercation/vim-colors-solarized first.)
" set background=dark
" let g:solarized_termtrans=1
" set t_Co=16
" colorscheme solarized

filetype plugin indent on " enable loading indent file for filetype



" python-mode configuration
" let g:pymode=0
let g:pymode_indent=0
let g:pymode_motion=0
let g:pymode_doc=0
let g:pymode_breakpoint=1
let g:pymode_lint=0
let g:pymode_rope=0
let g:pymode_syntax=0

let g:pymode_virtualenv=1 " Auto fix vim python paths if virtualenv enabled
" let g:pymode_folding=1  " Enable python folding
" let g:pymode_utils_whitespaces=0  " Do not autoremove unused whitespaces
" let g:pymode_lint_ignore = "C0110 Exported"  " ignore pep257 missing docstring warning
" let g:pymode_lint_minheight = 5   " Minimal height of pylint error window
" let g:pymode_lint_maxheight = 15  " Maximal height of pylint error window
" let g:pymode_lint_write = 0  " Disable pylint checking every save
" let g:pymode_run_key = "<leader>run"  " default key conflicts with jedi-vim
" let g:pymode_syntax_highlight_self=0  " do not highlight self
" let g:pymode_rope_vim_completion=0  " use jedi-vim for completion
" let g:pymode_rope_guess_project=0
" let g:pymode_doc_key="<leader>k"  " used jedi-vim for help
let g:pymode_run_bind = '<leader>R'
