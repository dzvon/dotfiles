"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" save file
nnoremap <leader>sf :w<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Enhance command-line completion
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Show the cursor position
set ruler

" A buffer becomes hidden when it is abandoned
set hidden

" Use the OS clipboard by default
set clipboard+=unnamedplus

" Allow backspace in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" Ignore case of searches
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight searches
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Add a bit extra margin to the left
set foldcolumn=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Centralize backups, swapfiles and undo history
set backupdir=~/.config/nvim/backups
set directory=~/.config/nvim/swaps
if exists("&undodir")
    set undodir=~/.config/nvim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Translate tabs to spaces
set expandtab

" Be smart when using tabs ;)
set smarttab

" Make tabs as wide as four spaces
set tabstop=4
" Make indentation as four space
set shiftwidth=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual star search
xnoremap *         : <C-u>call <SID>VSetSearch() <CR>/<C-R>=@/<CR><CR>
xnoremap #         : <C-u>call <SID>VSetSearch() <CR>?<C-R>=@/<CR><CR>

function! s:VSetSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
    let @s = temp
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <bs> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" no highlighting temporary with <leader>hs
noremap <silent> <leader>hs :nohlsearch<CR>

" Close the current window.
nnoremap <leader>cw :close<CR>
" Delete current buffer
nnoremap <leader>q :Bclose<cr>:tabclose<cr>gT

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

" Close current tab
nnoremap <leader>ct :tabclose<CR>
" Close Location panel
nnoremap <leader>ce :lclose<CR>

" Switch buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Switch tabs
nnoremap <silent> [t :tabprevious<CR>
nnoremap <silent> ]t :tabnext<CR>
nnoremap <silent> [T :tabfirst<CR>
nnoremap <silent> ]T :tablast<CR>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" cd to the directory containing the file in the buffer
noremap <leader>cd :lcd %:h<CR>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\(\s\+\|\)$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction

if has("autocmd")
    " Trim trailing white space on save
    autocmd BufWritePre * :call StripWhitespace()
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickly open a buffer for scribble
map <leader>z :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif

" If you use vim inside tmux, see https://github.com/vim/vim/issues/993
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    " Treat .md files as Markdown
    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
    " Treat .html files as php
    " autocmd BufNewFile,BufRead *.html setlocal filetype=php
    " Enable emmet for ...
    autocmd FileType html,css,vue,php,go EmmetInstall
    " Shortcut to run python file
    autocmd FileType python nnoremap <buffer> <F9> :w<CR> :exec '!python3' shellescape(@%, 1)<CR>
    " Shortcut to run go
    autocmd FileType go nmap <leader>r <Plug>(go-run)
    autocmd FileType go noremap <leader>tg :GoDecls<CR>
    autocmd FileType php noremap <leader>tg :CtrlPBufTag<CR>
endif

""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""
call plug#begin()

Plug 'kien/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx', {'for': ['javascript.jsx']}
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/Align'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'rking/ag.vim'
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
" Plug 'sheerun/vim-polyglot'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'posva/vim-vue'
Plug 'altercation/vim-colors-solarized'
Plug 'suan/vim-instant-markdown'
Plug 'vim-airline/vim-airline-themes'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'w0rp/ale'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'vim-scripts/peaksea'
Plug 'wesgibbs/vim-irblack'
Plug 'yuttie/comfortable-motion.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>yo :Goyo<cr>
nnoremap <silent> <leader>yq :Goyo!<cr>


" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Don’t add empty newlines at the end of files
set binary
set noeol
" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Highlight current line
set cursorline
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list
" Enable mouse in all modes
set mouse=a
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
    set relativenumber
    au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

set completeopt=longest,menuone

" noremap <leader>ss :call StripWhitespace()<CR>



" JSX in js file
" let g:jsx_ext_required = 0
" vim-airline config
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
" let g:airline_theme = 'default'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" ultisnips config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger = "<C-j>"
" let g:UltiSnipsJumpForwardTrigger = "<c-b>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Enable HTML/CSS syntax highlighting in js file
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" php-cs-fixer
let g:php_cs_fixer_fixers_list = "-psr0"

let g:ale_linter_aliases = {'vue': ['html', 'css']}

" Keyboard shortcuts
" inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr> <CR>    pumvisible() ? "\<C-x><C-n>" : "\<CR>"
inoremap <expr> <Tab> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

" set background=light
" colorscheme solarized
let g:solarized_termcolors=256
set t_Co=256

noremap <leader>T :CtrlPClearCache<CR>:CtrlP
noremap <leader>b :CtrlPBuffer<CR>
noremap <leader>m :CtrlPMRUFiles<CR>
noremap <leader>d :NERDTreeToggle<CR>
noremap <leader>f :NERDTreeFind<CR>
" noremap <bs> :tabprevious<CR>
" noremap <C-l> :tabnext<CR>
" Switch syntastic error
nnoremap <silent> [a :ALEPreviousWrap<CR>
nnoremap <silent> ]a :ALENextWrap<CR>
" Back to Startify
nnoremap <leader>H :Startify<CR>
" brackets input
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap {<CR> {<CR>}<c-o>O
inoremap ( ()<esc>i
inoremap <> <><esc>i
inoremap " ""<esc>i
inoremap '' ''<esc>i
" set text wrapping toggles
noremap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>
" set \ to ,
noremap \ ,
nnoremap <leader>a : Ack!<space>
noremap <leader>l  : Align
" nnoremap <C-Tab>   : <C-6><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Git push origin HEAD<CR>
nnoremap <leader>gr :Git pull --rebase<CR>
" Switch quickfix
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
" Down is really the next line
nnoremap j gj
nnoremap k gk
" Resize vsplit
nmap 25s :vertical resize 40<cr>
nmap 50s <c-w>=
nmap 75s :vertical resize 120<cr>
"
nnoremap <C-6> <C-^>
" Select the last changed text(or the text that was just pasted)
nnoremap gp `[v`]

" Diff current buffer and the original file
function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
    " Building a hash ensures we get each buffer only once
    let buffer_numbers = {}
    for quickfix_item in getqflist()
        let bufnr = quickfix_item['bufnr']
        " Lines without files will appear as bufnr=0
        if bufnr > 0
            let buffer_numbers[bufnr] = bufname(bufnr)
        endif
    endfor
    return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

" Emmet configuration
" only enable in insert mode.
let g:user_emmet_mode = 'i'
" disable global install
let g:user_emmet_install_global = 0
" redefine emmet trigger key
let g:user_emmet_leader_key = '<C-z>'

" Go configuration
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_term_mode = "split"