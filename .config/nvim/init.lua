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
vim.o.listchars = "tab:▸ ,trail:·,eol:¬"

vim.o.completeopt = "menuone,noinsert,noselect"

-- Save file
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', { noremap = true, silent = true })

-- Moving around
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Use CTRL+{h,j,k,l} to navigate windows in terminal mode
vim.keymap.set('t', '<C-h>', '<C-\\><C-N><C-w>h', { noremap = true, silent = true })
vim.keymap.set('t', '<C-j>', '<C-\\><C-N><C-w>j', { noremap = true, silent = true })
vim.keymap.set('t', '<C-k>', '<C-\\><C-N><C-w>k', { noremap = true, silent = true })
vim.keymap.set('t', '<C-l>', '<C-\\><C-N><C-w>l', { noremap = true, silent = true })

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

-- Lazy plugin manager
require("config.lazy")

-- Colorscheme
vim.cmd("colorscheme catppuccin")

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
