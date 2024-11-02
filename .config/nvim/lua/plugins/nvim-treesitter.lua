return {
  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "bash", "c", "diff", "html", "javascript", "json", "jsonc", "jsonnet", "lua", "markdown", "markdown_inline", "query", "rust", "terraform", "toml", "typescript", "vim", "vimdoc", "yaml"},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
  }
}
