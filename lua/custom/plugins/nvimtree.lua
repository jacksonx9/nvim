return {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons',
  },
  cmd = { 'NvimTreeToggle', 'NvimTreeClose' },
  config = function()
    require('nvim-tree').setup {
      disable_netrw = true,
      hijack_netrw = true,
      view = {
        number = true,
        relativenumber = true,
      },
      filters = {
        custom = { '.git' },
      },
    }
  end,
}
