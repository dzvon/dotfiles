set hidden
" Use the OS clipboard by default
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.config/nvim/backups
set directory=~/.config/nvim/swaps
if exists("&undodir")
    set undodir=~/.config/nvim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Translate tabs to spaces
set expandtab
" Make tabs as wide as four spaces
set tabstop=4
" Make indentation as four space
set shiftwidth=4
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
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

set termguicolors
" If you use vim inside tmux, see https://github.com/vim/vim/issues/993
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\(\s\+\|\)$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
" noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

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
    " Trim trailing white space on save
    autocmd BufWritePre * :call StripWhitespace()
    " Enable emmet for ...
    autocmd FileType html,css,vue,php,go EmmetInstall
    " Shortcut to run python file
    autocmd FileType python nnoremap <buffer> <F9> :w<CR> :exec '!python3' shellescape(@%, 1)<CR>
    " Shortcut to run go
    autocmd FileType go nmap <leader>r <Plug>(go-run)
    autocmd FileType go noremap <leader>tg :GoDecls<CR>
    autocmd FileType php noremap <leader>tg :CtrlPBufTag<CR>
endif

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

call plug#end()

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

" Youcompleteme config
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_seed_identifiers_with_syntax = 1
" let g:ycm_complete_in_comments = 1
" let g:ycm_complete_in_strings = 1
" let g:ycm_collect_identifiers_from_comments_and_strings = 1
" let g:ycm_always_populate_location_list = 1
" let g:ycm_confirm_extra_conf = 0

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

" Vim GUI environment.
" if has('gui_vimr')
    " set background=light
    " colorscheme solarized
    " vmap <C--> <plug>NERDCommenterToggle
    " nmap <C--> <plug>NERDCommenterToggle
    " imap <C--> <plug>NERDCommenterInsert
" else
    " vmap <C-_> <plug>NERDCommenterToggle
    " nmap <C-_> <plug>NERDCommenterToggle
    " imap <C-_> <plug>NERDCommenterInsert
" endif

noremap <leader>T :CtrlPClearCache<CR>:CtrlP
noremap <leader>b :CtrlPBuffer<CR>
noremap <leader>m :CtrlPMRUFiles<CR>
noremap <leader>d :NERDTreeToggle<CR>
noremap <leader>f :NERDTreeFind<CR>
noremap <bs> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" noremap <bs> :tabprevious<CR>
" noremap <C-l> :tabnext<CR>
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
" no highlighting temporary with <leader>hs
noremap <silent> <leader>hs :nohlsearch<CR>
" cd to the directory containing the file in the buffer
noremap <leader>cd :lcd %:h<CR>
" set text wrapping toggles
noremap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>
" set \ to ,
noremap \ ,
" Visual star search
xnoremap *         : <C-u>call <SID>VSetSearch() <CR>/<C-R>=@/<CR><CR>
xnoremap #         : <C-u>call <SID>VSetSearch() <CR>?<C-R>=@/<CR><CR>
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
" Close the current window.
nnoremap <leader>cw :close<CR>
" Delete current buffer
nnoremap <leader>q :bdelete<CR>
" Close current tab
nnoremap <leader>ct :tabclose<CR>
" Close Location panel
nnoremap <leader>ce :lclose<CR>
" save file
nnoremap <leader>sf :w<CR>
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

function! s:VSetSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
    let @s = temp
endfunction
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