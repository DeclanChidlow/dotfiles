local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
    print('lazy.nvim installed.')
  end
end

function lazy.setup(plugins)
  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {
  ui = {
    border = 'rounded',
  },
  install = {
    missing = true,            -- install missing plugins on startup.
    colorscheme = {'nightly'}  -- use this theme during first install process
  },
  change_detection = {
    enabled = true, -- check for config file changes
    notify = true,  -- get a notification when changes are found
  },
}

lazy.setup({
  -- Load them from the lua/plugins folder
  {import = 'plugins'}
})

-- Local plugins
--

require('plugins.core.statusline').setup()
