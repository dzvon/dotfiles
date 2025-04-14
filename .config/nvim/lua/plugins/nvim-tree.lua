vim.keymap.set('n', '<leader>d', '<cmd>NvimTreeToggle<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f', '<cmd>NvimTreeFindFile!<cr>', { noremap = true, silent = true })

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    on_attach = function (bufnr)
      local api = require('nvim-tree.api')

      -- Use all default mappings
      api.config.mappings.default_on_attach(bufnr)

      -- Remove some STUPID default key mappings
      vim.keymap.del('n', 'M', { buffer = bufnr })
      vim.keymap.del('n', 'H', { buffer = bufnr })
      vim.keymap.del('n', 'L', { buffer = bufnr })
      vim.keymap.del('n', 'e', { buffer = bufnr })
    end,
    sync_root_with_cwd = true,
  }
}
