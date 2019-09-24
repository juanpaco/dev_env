autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree' " File explorer
Plug 'tpope/vim-fugitive' " Git info in status bar
Plug 'tomasiser/vim-code-dark' " Color theme
Plug 'kburdett/vim-nuuid' " Generates v4 UUIDs with \p.  Very useful when working with microservices.
Plug 'w0rp/ale' " Engine for fixers, formatting on save and such

call plug#end()

colorscheme codedark

set nocompatible
syntax on
filetype plugin indent on " Autoload file type detection, type plugin loading, and type indent rule loading
set number " Show line numbers
set laststatus=2 " Always show the status line
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P " Status line includes fugitive stuff

" START: NERDTree
autocmd vimenter * NERDTree " Auto-start NERDTree on startup
let NERDTreeShowHidden=1 " NERDTree shows hidden files
" END: NERDTree
"

" Much of this taken from http://nvie.com/posts/how-i-boosted-my-vim/.  THANK YOU!
set nowrap        " don't wrap lines
set tabstop=2     " a tab is 2 spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when
		  " indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup		" No .swp files!!!!!
set noswapfile

set pastetoggle=<F2>
nnoremap ; :

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Resizing the panes
map <C-u> :res +1<CR>
map <C-i> :res -1<CR>
map <C-y> :vertical res -1<CR>
map <C-o> :vertical res +1<CR>

set softtabstop=2  " Thank you http://www.jwz.org/doc/tabs-vs-spaces.html.  Insert 2 spaces when TAB is pressed.
set expandtab

set foldmethod=syntax " Enable code folding
set foldlevelstart=10

" START: ale
let g:ale_fixers = {'javascript': ['prettier_standard']}
let g:ale_linters = {'javascript': ['']}
let g:ale_fix_on_save = 1
