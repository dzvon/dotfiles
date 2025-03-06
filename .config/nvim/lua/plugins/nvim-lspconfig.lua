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
    -- if client.supports_method('textDocument/implementation') then
    --   -- Create a keymap for vim.lsp.buf.implementation
    --   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    -- end
    -- if client.supports_method('textDocument/typeDefinition') then
    --   -- Create a keymap for vim.lsp.buf.type_definition
    --   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    -- end
    -- if client.supports_method('textDocument/definition') then
    --   -- Create a keymap for vim.lsp.buf.definition
    --   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    -- end
    if client.supports_method('textDocument/codeAction') then
      -- Create a keymap for vim.lsp.buf.code_action
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'g.', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    end
    -- if client.supports_method('textDocument/references') then
    --   -- Create a keymap for vim.lsp.buf.references
    --   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    -- end
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

return {
  "neovim/nvim-lspconfig",
  dependencies = { 'saghen/blink.cmp' },
  config = function ()
    local nvim_lsp = require('lspconfig')
    local capabilities = require('blink.cmp').get_lsp_capabilities()

    -- Use a loop to conveniently call 'setup' on multiple servers and
    -- map buffer local keybindings when the language server attaches
    local servers = { "gopls", "clangd", "ruff", "jsonnet_ls", "terraformls", "denols", "gh_actions_ls", "taplo" }
    for _, lsp in ipairs(servers) do
      vim.lsp.enable(lsp)
    end

    vim.lsp.config('clangd', {
      cmd = { "clangd", "--background-index", "--header-insertion=never" }
    })

    vim.lsp.config('rust_analyzer', {
      capabilities = capabilities,
      settings = {
        ["rust-analyzer"] = {
          diagnostics = {
            enable = false,
          },
          cargo = {
            features = "all",
            -- target = "x86_64-pc-windows-msvc",
          },
        }
      },
    })

    vim.lsp.config('jsonnet_ls', {
      cmd = { "jsonnet-language-server", "--tanka", "--lint" },
    })

    vim.lsp.config('denols', {
      single_file_support = true,
      root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
    })

    -- nvim_lsp["lua_ls"].setup {
    --   settings = {
    --     Lua = {
    --       workspace = {
    --         library = {
    --           vim.env.VIMRUNTIME
    --         }
    --       }
    --     }
    --   }
    -- }

    vim.lsp.config('terraformls', {
      cmd = { "terraform-ls", "serve", "-log-file", "/dev/null" },
    })
  end
}
