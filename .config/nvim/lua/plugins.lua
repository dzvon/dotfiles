return {
  "nvim-lua/plenary.nvim",
  { "lewis6991/gitsigns.nvim", config = true },
  "tpope/vim-fugitive",
  "tpope/vim-surround",
  "tpope/vim-sleuth",
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = true,
    opts = function(_, opts)
      opts.sections = opts.sections or {}
      opts.sections.lualine_c = opts.sections.lualine_c or {}

      -- Copilot status
      table.insert(opts.sections.lualine_c, {
        function()
          return " "
        end,
        color = function()
          local status = require("sidekick.status").get()
          if status then
            return status.kind == "Error" and "DiagnosticError" or status.busy and "DiagnosticWarn" or "Special"
          end
        end,
        cond = function()
          local status = require("sidekick.status")
          return status.get() ~= nil
        end,
      })
    end,
  },
  "rust-lang/rust.vim",

  "joshdick/onedark.vim",
  'morhetz/gruvbox',
  { "catppuccin/nvim",         name = "catppuccin", priority = 1000 },

  'mg979/vim-visual-multi',
  "lambdalisue/suda.vim",
  'terrastruct/d2-vim',
  'google/vim-jsonnet',
  'will133/vim-dirdiff',
  'rebelot/kanagawa.nvim',
  'neovim/nvim-lspconfig'
}
