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

-- Netrw file explorer configuration
vim.g.netrw_banner = 0          -- Disable banner
vim.g.netrw_liststyle = 3       -- Tree view
vim.g.netrw_browse_split = 4    -- Open in previous window
vim.g.netrw_altv = 1            -- Open splits to the right
vim.g.netrw_winsize = 25        -- Set width to 25% of screen
vim.g.netrw_keepdir = 0         -- Keep current directory synced
vim.g.netrw_localcopydircmd = 'cp -r'  -- Enable recursive copy

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

-- Toggle file explorer
vim.keymap.set('n', '<leader>e', '<cmd>Lexplore<cr>', { noremap = true, silent = true })

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

-- Auto-format files prior to saving them
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.rs", "*.go", "*.tf", "*.ts" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end
})

-- Briefly highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function() vim.highlight.on_yank() end
})

-- User commands
vim.api.nvim_create_user_command('Qargs', function ()
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
