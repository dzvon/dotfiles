return {
  'github/copilot.vim',
  init = function ()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_filetypes = { "*" }
  end
}
