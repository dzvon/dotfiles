""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""
call plug#begin()

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-tree/nvim-web-devicons' " for file icons
Plug 'nvim-tree/nvim-tree.lua'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'

Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'nvim-lualine/lualine.nvim'
" Plug 'scrooloose/nerdcommenter'
" Plug 'easymotion/vim-easymotion'

" Plug 'SirVer/ultisnips'
Plug 'godlygeek/tabular'

Plug 'tpope/vim-sleuth'

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'jparise/vim-graphql'

Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
" Plug 'saadparwaiz1/cmp_luasnip' " Snippets source for nvim-cmp
" Plug 'L3MON4D3/LuaSnip' " Snippets plugin

Plug 'nvim-telescope/telescope.nvim'

Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mbbill/undotree'
Plug 'lambdalisue/suda.vim'

"Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'szw/vim-maximizer'

Plug 'github/copilot.vim'

Plug 'terrastruct/d2-vim'

Plug 'google/vim-jsonnet'

Plug 'will133/vim-dirdiff'

Plug 'sourcegraph/sg.nvim', { 'do': 'nvim -l build/init.lua' }

Plug 'vlime/vlime', {'rtp': 'vim/'}

Plug 'olimorris/codecompanion.nvim'
Plug 'stevearc/dressing.nvim'
call plug#end()

" copilot config
let g:copilot_no_tab_map = v:true
let g:copilot_filetypes = { '*': v:true }
imap <expr> <Plug>(vimrc:copilot-dummy-map) copilot#Accept("\<Tab>")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nvim-lsp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight link CompeDocumentation NormalFloat

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabular
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

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
nnoremap <leader>w :w<CR>

" Save a file as root (,W)
noremap <leader>W :w suda://%<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start scrolling three lines before the horizontal window border
set scrolloff=3
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

" colorscheme catppuccin-mocha
set background=light
colorscheme catppuccin-mocha

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Highlight ColorColumn ctermbg=magenta
" hi Pmenu guifg=fg guibg=#e0b0e0

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
    set undofile
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Translate tabs to spaces
set expandtab

" Be smart when using tabs ;)
set smarttab

" Linebreak on 500 characters
set lbr
set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <bs> <C-w>h
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" no highlighting temporary with <leader>hs
noremap <silent> <leader>hs :nohlsearch<CR>

" Close the current window.
nnoremap <leader>cw :close<CR>
" Delete current buffer
nnoremap <leader>q :Bclose<cr>

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

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

" Close current tab
nnoremap <leader>ct :tabclose<CR>
" New tab
nnoremap <leader>tn :tabnew<CR>
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

" copen
nnoremap <leader>co :copen<CR>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" cd to the directory containing the file in the buffer
noremap <leader>cd :lcd %:h<CR>:pwd<cr>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickly open a buffer for scribble
map <leader>z :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
set termguicolors

" If you use vim inside tmux, see https://github.com/vim/vim/issues/993
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    autocmd BufRead,BufNewFile *.hurl setlocal filetype=hurl
    " Auto-format *.rs (rust) files prior to saving them
    " (async = false is the default for format)
    autocmd BufWritePre *.rs,*.go,*.tf,*.ts lua vim.lsp.buf.format({ async = false })
    " Get the 2-space YAML as the default when hit carriage return after the colon
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType typescript setlocal sw=2
    " Trim trailing white space on save
    autocmd BufWritePre * :call StripWhitespace()
endif

" Add the g flag to search/replace by default
set gdefault
" Don’t add empty newlines at the end of files
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
" set nostartofline
" Don’t show the intro message when starting Vim
set shortmess+=c
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

set spell spelllang=en_us,cjk

set completeopt=menuone,noinsert,noselect

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

noremap <C-p> <cmd>Telescope find_files<CR>
noremap <leader>b <cmd>Telescope buffers<CR>
noremap <leader>tg <cmd>Telescope treesitter<CR>
noremap <leader>m <cmd>Telescope oldfiles<CR>
nnoremap <leader>a <cmd>Telescope live_grep<CR>

noremap <leader>d :NvimTreeToggle<CR>
noremap <leader>f :NvimTreeFindFile<CR>

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
noremap <leader>l  : Tab/
" nnoremap <C-Tab>   : <C-6><CR>
" nnoremap <leader>gs :Git<CR>
" nnoremap <leader>gc :Git commit -v<CR>
" nnoremap <leader>gp :Git push origin HEAD<CR>
" nnoremap <leader>gr :Git rebase<CR>
" nnoremap <leader>gl :Git pull<CR>
" nnoremap <leader>gb :Git blame<CR>
" Switch quickfix
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
" Switch location list
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>

" Down is really the next line
noremap j gj
noremap k gk
" Resize vsplit
nmap 25s :vertical resize 40<cr>
nmap 50s <c-w>=
nmap 75s :vertical resize 120<cr>
nnoremap <silent> <Leader>> :MaximizerToggle<CR>
nnoremap <silent> <Leader>< :MaximizerToggle<CR>
" Undotree
nnoremap <leader>u :UndotreeToggle<cr>

com Wdt windo diffthis
com Wdo diffoff!
com CloseNoNameBuf :bufdo if bufname('%') == '' | silent execute 'bwipeout! %' | endif

com Scb windo set scrollbind!

"nnoremap <C-6> <C-^>
" Select the last changed text(or the text that was just pasted)
nnoremap gp `[v`]

" Use CTRL+{h,j,k,l} to navigate windows in terminal-mode
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" Diff current buffer and the original file
command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_
      \ | diffthis | wincmd p | diffthis

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

packadd termdebug
let g:termdebugger = "rust-gdb"

lua << EOF
local nvim_lsp = require('lspconfig')

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', 'gq', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.supports_method('textDocument/rename') then
      -- Create a keymap for vim.lsp.buf.rename()
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'grn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    end
    if client.supports_method('textDocument/implementation') then
      -- Create a keymap for vim.lsp.buf.implementation
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    end
    if client.supports_method('textDocument/typeDefinition') then
      -- Create a keymap for vim.lsp.buf.type_definition
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    end
    if client.supports_method('textDocument/definition') then
      -- Create a keymap for vim.lsp.buf.definition
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    end
    if client.supports_method('textDocument/codeAction') then
      -- Create a keymap for vim.lsp.buf.code_action
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'g.', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    end
    if client.supports_method('textDocument/references') then
      -- Create a keymap for vim.lsp.buf.references
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    end
    if client.supports_method('textDocument/documentFormatting') then
      -- Create a keymap for vim.lsp.buf.format()
      vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
    end
    if client.supports_method('textDocument/signatureHelp') then
      -- Create a keymap for vim.lsp.buf.signature_help()
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gk', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    end
  end,
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { "gopls", "clangd", "pyright", "jsonnet_ls", "terraformls", "denols", "lua_ls", "tsserver" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities,
  }
end

nvim_lsp["clangd"].setup {
  cmd = { "clangd", "--background-index", "--header-insertion=never" }
}

nvim_lsp["rust_analyzer"].setup {
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = false,
      },
      cargo = {
        features = "all"
      }
    }
  },
}

nvim_lsp["tsserver"].setup {
  root_dir = nvim_lsp.util.root_pattern("package.json"),
  single_file_support = false
}

nvim_lsp["denols"].setup {
  single_file_support = true,
  root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
}

-- luasnip setup
-- local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  mapping = cmp.mapping.preset.insert ({
  ['<C-p>'] = cmp.mapping.select_prev_item(),
  ['<C-n>'] = cmp.mapping.select_next_item(),
  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<CR>'] = cmp.mapping.confirm { select = true },
  ['<Tab>'] = cmp.mapping(function(fallback)
  if cmp.visible() then
    cmp.select_next_item()
    -- elseif vsnip.expand_or_jump() then
    --   vsnip.expand_or_jump()
  else
    fallback()
    end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
      -- elseif vsnip.jumpable(-1) then
      --   vsnip.jump(-1)
    else
      fallback()
      end
      end, { 'i', 's' }),
      ['<C-e>'] = cmp.mapping(function(fallback)
      vim.api.nvim_feedkeys(vim.fn['copilot#Accept'](vim.api.nvim_replace_termcodes('<Tab>', true, true, true)), 'n', true)
      end)
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'cody' }
    })
}

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

local function nvim_tree_on_attach(bufnr)
  local api = require('nvim-tree.api')

  -- Use all default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- Remove some STUPID default key mappings
  vim.keymap.del('n', 'M', { buffer = bufnr })
  vim.keymap.del('n', 'H', { buffer = bufnr })
  vim.keymap.del('n', 'L', { buffer = bufnr })
  vim.keymap.del('n', 'e', { buffer = bufnr })
end
require 'nvim-tree'.setup {
  on_attach = nvim_tree_on_attach,
}
require('gitsigns').setup()
require('lualine').setup()
require("bufferline").setup{}
require('telescope').setup{
  -- ...
}
-- require("ibl").setup {
    -- for example, context is off by default, use this to turn it on
    -- show_current_context = true,
    -- show_current_context_start = true,
-- }
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}

require('sg').setup()

require('dressing').setup({
    input = {
        win_options = {
            winhighlight = 'NormalFloat:DiagnosticError'
        }
    }
})
require('codecompanion').setup({
  adapters = {
    openai = function ()
      return require('codecompanion.adapters').extend('openai', {
        env = {
          api_key = "cmd:pass show API_Keys/openai"
        }
      })
    end,
  }
})
EOF

function! ApplyTextEdits()
  lua << EOF
  local function get_buf_content_by_name(buffer_name)
      -- Iterate through all buffers
      for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
          -- Check if the buffer is loaded to avoid errors with unloaded buffers
          if vim.api.nvim_buf_is_loaded(bufnr) then
              -- Get the name of the buffer
              local name = vim.api.nvim_buf_get_name(bufnr)

              -- Check if the name matches the one we're looking for
              if name:match(buffer_name) then
                  -- Buffer content is obtained as a list of lines
                  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
                  -- Return the buffer number and its content (or just the content if preferred)
                  return bufnr, lines
              end
          end
      end

      -- Return nil if no buffer with the given name is found
      return nil, nil
  end

  -- First, require the Treesitter utilities module which provides helper functions
  local ts_utils = require 'nvim-treesitter.ts_utils'

  -- Obtain the Treesitter parser for the current buffer
  -- This parser is responsible for generating the syntax tree of the text
  local ok, parser = pcall(vim.treesitter.get_parser, 0)
  if not ok then
      vim.api.nvim_err_writeln('No parser available for the given buffer')
      return
  end
  local lang = parser:lang()

  -- Parse the current buffer's content to generate the syntax tree
  local tree = parser:parse()

  -- Define a Treesitter query string
  -- This query aims to find specific syntax nodes in the document following the Treesitter query language
  -- Note: This specific query is focused on YAML syntax, adjust your query according to your needs
  local edit_query_buf_name = string.format('%s/query_editor.scm', lang)
  local _, content = get_buf_content_by_name(edit_query_buf_name)

  if content == nil then
      vim.api.nvim_err_writeln('No content found in the query editor buffer')
      return
  end

  local query_string = table.concat(content, '\n')

  -- Ensure that the query is valid for the given language
  -- `pcall` is used here to catch any errors thrown if parsing fails, making the script more robust
  local ok, query = pcall(vim.treesitter.query.parse, lang, query_string)
  if not ok then
      -- If the query fails to parse, output an error message and exit the function
      vim.api.nvim_err_writeln("Failed to parse query. Please ensure it's valid for " .. lang)
      return
  end

  -- Initialize a table to store the text edits
  local edits = {}

  -- Iterate over all matches found by the query in the syntax tree of the current buffer
  for id, node, metadata, match in query:iter_captures(tree[1]:root(), 0, 0, -1) do
      -- Checks if there's metadata associated with the capture, which includes any changes or annotations specified in the query
      if metadata and metadata[id] then
          if metadata[id].text then
              -- Convert the node's position in the syntax tree to an LSP range
              -- LSP (Language Server Protocol) ranges are used to specify text positions and are understood by Neovim's LSP functions
              local lsp_range = ts_utils.node_to_lsp_range(node)

              -- Create a text edit object containing the LSP range and the replacement text
              local text_edit = { range = lsp_range, newText = metadata[id].text }

              -- Add the text edit to the list of edits to apply
              table.insert(edits, text_edit)
          end
      end
  end

  -- Apply the calculated text edits to the current buffer
  -- This utilizes Neovim's LSP utility functions to perform the replacements specified by the edits
  vim.lsp.util.apply_text_edits(edits, vim.api.nvim_get_current_buf(), "utf-8")
EOF
endfunction
command! ApplyTextEdits call ApplyTextEdits()
