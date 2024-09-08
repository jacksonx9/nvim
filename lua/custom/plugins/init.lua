-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- which-key: Time in milliseconds to wait for a mapped sequence to complete.
vim.opt.timeoutlen = 300
vim.opt.colorcolumn = '80'

-- Better Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
-- vim.opt.termguicolors = true

vim.opt.wildignorecase = true

return {
  -- color scheme
  {
    'norcalli/nvim-colorizer.lua',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    cmd = 'ColorizerToggle',
    config = function()
      require('colorizer').setup()
    end,
  },
}
