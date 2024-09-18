return {
  'theprimeagen/harpoon',
  event = 'BufWinEnter',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<leader>11', function()
      harpoon:list():replace_at(1)
    end)
    vim.keymap.set('n', '<leader>22', function()
      harpoon:list():replace_at(2)
    end)
    vim.keymap.set('n', '<leader>33', function()
      harpoon:list():replace_at(3)
    end)
    vim.keymap.set('n', '<leader>44', function()
      harpoon:list():replace_at(4)
    end)
  end,
}
