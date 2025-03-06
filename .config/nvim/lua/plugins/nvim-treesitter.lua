return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "main",
    lazy = false,
    config = function()
      require("nvim-treesitter").install {
        "bash", "c", "diff", "html", "javascript", "json", "jsonnet", "lua", "markdown", "markdown_inline",
        "query", "rust", "terraform", "toml", "typescript", "vim", "vimdoc", "yaml"
      }

      -- configs.setup({
      --   highlight = { enable = true },
      --   indent = { enable = true },
      -- })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    init = function()
      -- Disable entire built-in ftplugin mappings to avoid conflicts.
      -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin for built-in ftplugins.
      vim.g.no_plugin_maps = true

      -- Or, disable per filetype (add as you like)
      -- vim.g.no_python_maps = true
      -- vim.g.no_ruby_maps = true
      -- vim.g.no_rust_maps = true
      -- vim.g.no_go_maps = true
    end,
    config = function()
      -- put your config here
    end,
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter-context",
  --   config = function()
  --     vim.keymap.set('n', "[c", function()
  --       require("treesitter-context").go_to_context(vim.v.count1)
  --     end, { silent = true })
  --   end
  -- }
}
