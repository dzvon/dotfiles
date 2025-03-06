-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ","

-- Use the OS clipboard by default (on versions compiled with `+clipboard`)
vim.o.clipboard = vim.o.clipboard .. "unnamedplus"

-- Centralize backups, swapfiles and undo history
vim.o.backupdir = vim.fn.stdpath('config') .. '/backups'
vim.o.directory = vim.fn.stdpath('config') .. '/swaps'
vim.o.undodir = vim.fn.stdpath('config') .. '/undo'

-- Enable undo files
vim.o.undofile = true

-- Enable spell checking
vim.o.spell = true

-- Enable line numbers (and relative line numbers)
vim.o.relativenumber = true
vim.o.number = true
vim.o.cursorline = true

-- Try to be smart about search case sensitivity
vim.o.ignorecase = true
vim.o.smartcase = true

-- Translate tabs to spaces
vim.o.expandtab = true

-- Maximum width of text that is being inserted
vim.o.textwidth = 80

-- Show "invisible" characters
vim.o.list = true
vim.o.listchars = "tab:▸ ,trail:·,nbsp:_"

vim.o.completeopt = "menuone,noinsert,noselect"

-- Save file
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', { noremap = true, silent = true })

-- Moving around
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Text wrapping and unwrapping
vim.keymap.set('n', '<leader>tw', '<cmd>set wrap!<cr>', { noremap = true, silent = true })

-- Close the current window
vim.keymap.set('n', '<leader>cw', '<cmd>close<cr>', { noremap = true, silent = true })

-- Delete the current buffer
vim.keymap.set('n', '<leader>q', '<cmd>bd!<cr>', { noremap = true, silent = true })

-- Toggle highlighting
vim.keymap.set('n', '<leader>hs', '<cmd>nohlsearch<cr>', { noremap = true, silent = true })

-- Make life easier when working with pairs
vim.keymap.set('i', '[', '[]<esc>i', { noremap = true, silent = true })
vim.keymap.set('i', '{', '{}<esc>i', { noremap = true, silent = true })
vim.keymap.set('i', '{<cr>', '{<cr>}<esc>O', { noremap = true, silent = true })
vim.keymap.set('i', '(', '()<esc>i', { noremap = true, silent = true })
vim.keymap.set('i', '"', '""<esc>i', { noremap = true, silent = true })
vim.keymap.set('i', "''", "''<esc>i", { noremap = true, silent = true })

-- Switch between buffers
vim.keymap.set('n', '[b', '<cmd>bp<cr>', { noremap = true, silent = true })
vim.keymap.set('n', ']b', '<cmd>bn<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '[B', '<cmd>bfirst<cr>', { noremap = true, silent = true })
vim.keymap.set('n', ']B', '<cmd>blast<cr>', { noremap = true, silent = true })

-- cd to the directory of the current buffer
vim.keymap.set('n', '<leader>cd', '<cmd>lcd %:p:h<cr><cmd>pwd<cr>', { noremap = true, silent = true })

-- Open a buffer for scribble notes
vim.keymap.set('n', '<leader>z', '<cmd>e ~/buffer<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>x', '<cmd>e ~/buffer.md<cr>', { noremap = true, silent = true })

-- Lazy plugin manager
require("config.lazy")

-- Colorscheme
vim.cmd.colorscheme "catppuccin"
-- vim.o.background = "dark"

-- Autocommands

-- Trim whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]]
})

-- LSP settings
vim.lsp.config('clangd', {
  cmd = { "clangd", "--background-index", "--header-insertion=never" }
})
vim.lsp.config('rust_analyzer', {
  settings = {
    ["rust-analyzer"] = {
      rustfmt = {
        -- Use nightly rustfmt to support unstable features
        extraArgs = { "+nightly", "--config", "format_macro_bodies=true" },
      },
      diagnostics = {
        enable = false,
      },
      cargo = {
        -- features = "all",
        -- target = "x86_64-pc-windows-msvc",
      },
    }
  },
})
vim.lsp.config('jsonnet_ls', {
  -- Use a function to dynamically build the command with absolute paths
  cmd = function(dispatchers, config)
    local root = config.root_dir
    local args = {
      "jsonnet-language-server",
      "--lint",
      "-J", root .. "/vendor/",
      "-J", root .. "/vendor/jsonnetlib/",
      "-J", root .. "/lib/"
    }
    return vim.lsp.rpc.start(args, dispatchers, { cwd = root })
  end,
})
vim.lsp.config('denols', { single_file_support = true })
vim.lsp.config('lua_ls', {
  settings = {
    Lua = { workspace = { library = { vim.env.VIMRUNTIME } } }
  }
})
vim.lsp.config('terraformls', {
  cmd = { "terraform-ls", "serve", "-log-file", "/dev/null" },
})
vim.lsp.config('copilot', {
  settings = {
    telemetry = {
      telemetryLevel = "off",
    }
  }
})

vim.lsp.enable({
  "rust_analyzer", "gopls", "clangd", "ruff", "jsonnet_ls", "denols",
  "taplo", "zls", "lua_ls", "copilot", "terraformls"
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local bufnr = args.buf
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

    -- Disable semantic tokens for terraformls: terraform-ls returns invalid
    -- token lengths causing an infinite loop in str_utfindex on neovim nightly.
    -- https://github.com/neovim/neovim/issues/36257
    -- https://github.com/hashicorp/terraform-ls/issues/2094
    if client and client.name == 'terraformls' then
      client.server_capabilities.semanticTokensProvider = nil
    end

    -- Auto-format ("lint") on save.
    if client:supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
        end,
      })
    end

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_inlineCompletion, bufnr) then
      vim.lsp.inline_completion.enable(true, { bufnr = bufnr })
      local function accept_word()
        vim.lsp.inline_completion.get({
          bufnr = bufnr,
          on_accept = function(item)
            local insert_text = item.insert_text
            local text = type(insert_text) == 'string'
                and insert_text
                or insert_text.value ---@type string

            local cursor = vim.api.nvim_win_get_cursor(0)
            local row, col = cursor[1], cursor[2]

            if item.range then
              -- Server provided a range: insert_text covers from range.start
              -- to range.end, which includes chars already typed.
              -- Strip the prefix and advance range.start to the cursor so
              -- nvim_buf_set_text only replaces the not-yet-typed portion.
              local start_col = item.range[2]
              local already_typed = col - start_col
              if already_typed > 0 then
                text = text:sub(already_typed + 1)
                item.range[2] = col
              end
            else
              -- No range: accept() will use nvim_paste at the cursor.
              -- Strip any prefix of insert_text that the user has already
              -- typed on the current line before the cursor.
              local line = vim.api.nvim_buf_get_lines(bufnr, row - 1, row, false)[1] or ''
              local before_cursor = line:sub(1, col)
              -- Find the longest suffix of before_cursor that is a prefix of text.
              for len = math.min(#before_cursor, #text), 1, -1 do
                if before_cursor:sub(-len) == text:sub(1, len) then
                  text = text:sub(len + 1)
                  break
                end
              end
            end

            -- Match one word (Neovim 'w' motion) + optional leading/trailing space/tab.
            -- Using %s* allows jumping over newlines to the next word.
            local leading = text:match('^%s*') or ''
            local rest = text:sub(#leading + 1)
            -- A word is either keyword characters or non-keyword non-whitespace characters
            local chars = rest:match('^[%w_]+') or rest:match('^[^%w_%s]+') or ''

            if leading == '' and chars == '' then
              return nil -- nothing to accept; leave hint visible
            end

            local trailing = text:sub(#leading + #chars + 1):match('^[ \t]?') or ''
            local word = leading .. chars .. trailing

            item.insert_text = word
            return item
          end,
        })
      end

      vim.keymap.set(
        'i',
        '<C-J>',
        vim.lsp.inline_completion.get,
        { desc = 'LSP: accept inline completion', buffer = bufnr }
      )
      vim.keymap.set(
        'i',
        '<C-G>',
        vim.lsp.inline_completion.select,
        { desc = 'LSP: switch inline completion', buffer = bufnr }
      )
      vim.keymap.set(
        'i',
        '<C-L>',
        accept_word,
        { desc = 'LSP: accept word from inline completion', buffer = bufnr }
      )
    end
  end,
})

-- Briefly highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function() vim.highlight.on_yank() end
})

-- User commands
vim.api.nvim_create_user_command('Qargs', function()
  local function QuickfixFilenames()
    local buffer_numbers = {}
    for _, quickfix_item in ipairs(vim.fn.getqflist()) do
      local bufnr = quickfix_item.bufnr
      if bufnr > 0 then
        buffer_numbers[bufnr] = vim.fn.bufname(bufnr)
      end
    end
    local filenames = {}
    for _, filename in pairs(buffer_numbers) do
      table.insert(filenames, vim.fn.fnameescape(filename))
    end
    return table.concat(filenames, ' ')
  end

  vim.cmd('args ' .. QuickfixFilenames())
end, { nargs = 0, bar = true })

-- Treesitter Highlighting
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'terraform', 'zig', 'yaml', 'markdown', 'jsonnet', 'bash', 'sh' },
  callback = function()
    vim.treesitter.start()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
