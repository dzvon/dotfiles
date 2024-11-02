vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>b', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tg', '<cmd>Telescope lsp_document_symbols<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>m', '<cmd>Telescope oldfiles<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>a', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })

return {
  'nvim-telescope/telescope.nvim',
}
