-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
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
