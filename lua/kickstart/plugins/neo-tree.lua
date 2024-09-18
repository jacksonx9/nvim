-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  git_status = {
    symbols = {
      -- Change type
      added = '', -- or "✚", but this is redundant info if you use git_status_colors on the name
      modified = '', -- or "", but this is redundant info if you use git_status_colors on the name
      deleted = '✖', -- this can only be used in the git_status source
      renamed = '󰁕', -- this can only be used in the git_status source
      -- Status type
      untracked = '',
      ignored = '',
      unstaged = '󰄱',
      staged = '',
      conflict = '',
    },
  },
  modified = {
    symbol = '[+]',
    highlight = 'NeoTreeModified',
  },
  --  name = {
  --    trailing_slash = false,
  --    use_git_status_colors = true,
  --    highlight = 'NeoTreeFileName',
  --  },
  keys = {
    { '<leader>ee', ':Neotree reveal<CR>', desc = 'NeoTree reveal' },
    { '<leader>ef', ':Neotree reveal_force_cwd<CR>', desc = 'NeoTree reveal on current file' },
    { '<leader>ec', ':Neotree close<CR>', desc = 'NeoTree close' },
  },
  opts = {
    event_handlers = {
      {
        event = 'file_open_requested',
        handler = function()
          -- auto close
          -- vim.cmd("Neotree close")
          -- OR
          require('neo-tree.command').execute { action = 'close' }
        end,
      },
      {
        event = 'neo_tree_buffer_enter',
        handler = function(arg)
          vim.cmd [[
          setlocal relativenumber 
        ]]
        end,
      },
    },
  },
}
