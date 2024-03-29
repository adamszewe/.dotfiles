" Vim Configuration File

"============================================================================
" Appearance 
"============================================================================
    syntax on                       " load the syntax file for the language
    set number                      " print the line number in front of each line
    set background=dark             " enable for dark terminals
    set nowrap                      " don't wrap lines
    set showmatch                   " show matching bracket (briefly jump)
    set showmode                    " show mode in status bar (insert/replace/...)
    set showcmd                     " show typed command in status bar
    set ruler                       " show cursor position in status bar
    set title                       " show file in titlebar
    set wildmenu                    " completion with menu
    set matchtime=2                 " show matching bracket for 0.2 seconds
    set matchpairs+=<:>             " specially for HTML
    set scrolloff=128               " keep the vertical cursor position in the middle
    set novisualbell                " turn off terminal flashing on errors 
    set noerrorbells                " turn off audio bells on errors
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%121v.\+/    " highlight text in red instead of having a vertical column


"==============================================================================
" Editor behavior settings
"==============================================================================
    set esckeys                     " map missed escape sequences (enables keypad keys)
    set ignorecase                  " case insensitive searching
    set smartcase                   " but become case sensitive if you type uppercase characters
    set smartindent                 " do smart autonindenting when starting a new line
    set autoindent                  " copy indent from current line when starting a new line
    set smarttab                    " smart tab handling for indenting
    set magic                       " change the way backslashes are used in search patterns
    set cindent                     " enables automatic C program indenting
    set expandtab                   " use the appropriate number of spaces to insert a tab
    " set textwidth=100               " max line of the line after which the text will be broken
    set tabstop=4                   " number of spaces that a tab in the file counts for
    set softtabstop=4               " number of spaces a <Tab> counts for
    set shiftwidth=4                " number of spaces to use for each step of (auto)indent
    set backspace=indent,eol,start  " Allow backspacing over everything in insert mode


"==============================================================================
" Search
"==============================================================================
    set infercase       " keyword completion depends on case
    set incsearch       " search while typing


"============================================================================
" Swap files are annoying, disable them
"============================================================================
    set nobackup
    set nowritebackup
    set noswapfile


"============================================================================
" Set up persistent undo (with all undo files in one directory)
"============================================================================
    if has('persistent_undo')
            set undofile
    endif
    set undodir=$HOME/.VIM_UNDO_FILES
    set undolevels=1000


let mapleader = " "
vnoremap <leader>y "+y
set relativenumber


