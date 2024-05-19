return {
  'vlime/vlime',
  config = function (plugin)
    vim.opt.rtp:append(plugin.dir .. '/vim')
  end
}
