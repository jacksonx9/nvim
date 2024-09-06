return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup {
      -- A list of parser names, or "all"
      ensure_installed = 'all',

      -- Install languages synchronously (only applied to `ensure_installed`)
      sync_install = false,

      highlight = {
        -- `false` will disable the whole extension
        enable = true,
      },
    }
  end,
}
