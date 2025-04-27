require('core')

-- require plugins in plugins directory automatically
local function get_plugins()
  local plugins = {}
  local plugin_dir = vim.fn.stdpath('config') .. '/lua/plugins'
  local files = vim.fn.globpath(plugin_dir, '*.lua', false, true)

  for _, file in ipairs(files) do
    local module = file:match(".*/(.*)%.lua$")
    if module then
      table.insert(plugins, require('plugins.' .. module))
    end
  end

  return plugins
end

-- setup lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup(get_plugins())
