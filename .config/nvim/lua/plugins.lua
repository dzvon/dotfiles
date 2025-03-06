return {
  "nvim-lua/plenary.nvim",
  {
    "lewis6991/gitsigns.nvim",
    config = true,
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal({ ']c', bang = true })
          else
            gitsigns.nav_hunk('next')
          end
        end)

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal({ '[c', bang = true })
          else
            gitsigns.nav_hunk('prev')
          end
        end)
      end,
    }
  },
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
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  'mg979/vim-visual-multi',
  "lambdalisue/suda.vim",
  'terrastruct/d2-vim',
  'google/vim-jsonnet',
  'will133/vim-dirdiff',
  'rebelot/kanagawa.nvim',
  'neovim/nvim-lspconfig'
}
