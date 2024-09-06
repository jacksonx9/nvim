return {
  'folke/which-key.nvim',
  opt = {
    mode = 'n', -- Normal mode
    prefix = '<leader>',
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  },
  conf = {
    window = {
      border = 'single', -- none, single, double, shadow
      position = 'bottom', -- bottom, top
    },
  },
  f = {
    name = 'Find',
    f = { "<cmd>lua require('utils.finder').find_files()<cr>", 'Files' },
    b = { '<cmd>FzfLua buffers<cr>', 'Buffers' },
    o = { '<cmd>FzfLua oldfiles<cr>', 'Old files' },
    g = { '<cmd>FzfLua live_grep<cr>', 'Live grep' },
    c = { '<cmd>FzfLua commands<cr>', 'Commands' },
    e = { '<cmd>NvimTreeToggle<cr>', 'Explorer' },
  },
  config = function()
    require('which-key').setup()
  end,
}
