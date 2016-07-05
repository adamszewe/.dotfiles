"============================================================================
" .vimrc - the vim configuration file
"============================================================================

"============================================================================
" All the options will use the Vim way
"============================================================================
    set nocompatible



"============================================================================
" Appearance 
"============================================================================
    colorscheme ron
    syntax on
    set number



"============================================================================
" Swap files are annoying
" Let's hope vim doesn't crash
"============================================================================
    set nobackup
    set nowritebackup
    set noswapfile



"============================================================================
" set the compatibility with the X system clipboard
"============================================================================
    set clipboard=unnamedplus



"============================================================================
filetype plugin on 
filetype plugin indent on
set softtabstop=4

" turns the highlighting on or off
set ofu=syntaxcomplete#Complete
set nowrap

" pop-up menu selects the longest match
set completeopt=longest,menuone
set cindent
set smartindent
set autoindent

"highlight Pmenu guibg=black
hi Pmenu ctermbg=green ctermfg=NONE
hi Pmenu ctermbg=green ctermfg=NONE  guibg=whtie guifg=white

set ai et sw=4 ts=4 tw=110 sts=4



" Load a template based on the file extension
autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e.tpl

" highlight the current line
"hi CursorLine cterm=NONE ctermbg=yellow  guibg=darkred guifg=darkred
"hi Cursor guifg=red guibg=red
" set guicursor=n-v-c:block-Cursor
set cursorline

" search 
set infercase       " see :h infercase for an explanation

" 
set scrolloff=9999

" mappings for buffers
nnoremap <silent> [b :bprevious<CR>     " previous buffer
nnoremap <silent> ]b :bnext<CR>         " next buffer 
nnoremap <silent> [B :bfirst<CR>        " go to the first bufffer 
nnoremap <silent> [B :blast<CR>         " go to the last bufffer 

" mappings for tabs
nnoremap <silent> [t :tabprevious<CR>
nnoremap <silent> ]t :tabnext<CR>




" use the star character in visual mode to searc for the current selection 
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
    let @s = temp
endfunction

" this is for spell checking
set spelllang=en_us


" add empty line above or below the current line 
map <Enter> o<Esc> 
map <S-Enter> O<Esc>







" from the oreilly video course about vim 
"




"============================================================================
"" Use arrow keys to navigate after a :vimgrep or :helpgrep
"============================================================================
    nmap <silent> <RIGHT>         :cnext<CR>
    nmap <silent> <RIGHT><RIGHT>  :cnfile<CR><C-G>
    nmap <silent> <LEFT>          :cprev<CR>
    nmap <silent> <LEFT><LEFT>    :cpfile<CR><C-G>



"============================================================================
" Make :help appear in a full-screen tab, instead of a window
"============================================================================
    " Only apply to .txt files
    augroup HelpInTabs
        autocmd!
        autocmd BufEnter  *.txt   call HelpInNewTab()
    augroup END

    "Only apply to help files...
    function! HelpInNewTab()
        if &buftype == 'help'
            "Convert the help window to a tab...
            execute "normal \<C-W>T"
        endif
    endfunction 



"============================================================================
" Turn on the ruler in the status line 
"============================================================================
    set ruler




"============================================================================
" Make % match angle brackets as well (including Euro-brackets)
"============================================================================

    set matchpairs+=<:>,«:»

"============================================================================
" Make % match = and ; useful for programming languages that use that kind
" of syntax
" Note that it appends the wanted characters
"============================================================================
    set matchpairs+==:;         

   
"============================================================================
" Use the very special mode of searching - works like regular regex
" in other programming languages 
"============================================================================
"    nnoremap / /\v
"


"============================================================================
" Turn on case-insensitive matches (but only when pattern is all-lowercase)
" smartcase overrides the behavior of ignorecase 
"============================================================================
    set ignorecase smartcase

"============================================================================
"" Make searches look-ahead as you type
"============================================================================
    set incsearch 

"============================================================================
"" Make successful searches highlight all possible matches
"============================================================================
    set hlsearch

"============================================================================
"" Make delete key in Normal mode remove the persistently highlighted matches
"============================================================================
"
    nnoremap <silent>  <BS>  :nohlsearch<CR>
    " silent the hlsearch, like clear the screen 
    nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>





"============================================================================
"" Set up persistent undo (with all undo files in one directory)
"============================================================================
    if has('persistent_undo')
            set undofile
    endif

    set undodir=$HOME/.VIM_UNDO_FILES

    set undolevels=5000


"============================================================================
"" Set up a permanent universal vertical marker after 80 columns
"============================================================================
"    highlight ColorColumn ctermbg=red
"    set colorcolumn=121




"#function! commentBlock()

