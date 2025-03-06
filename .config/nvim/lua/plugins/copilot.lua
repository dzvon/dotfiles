return {
  'github/copilot.vim',
  init = function()
    vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)')
    vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_filetypes = { "*" }

    vim.g.copilot_command = { "copilot-language-server", "--stdio" }

    vim.g.copilot_lsp_settings = {
      telemetry = {
        telemetryLevel = "off"
      }
    }
  end
}
