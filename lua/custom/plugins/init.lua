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

vim.opt.scrolloff = 8

-- move highlighted lines using J and K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- greatest remap ever
-- paste using <leader>p will paste and the overwridden thing will go to void register
vim.keymap.set('x', '<leader>p', [["_dP]])

-- real time find+replace in file
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- not sure? I presume it deletes to the void, but not sure
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- keep cursor centered
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- keep cursor centered during search
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

local keymap = vim.keymap -- for conciseness

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' }) -- increment
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' }) -- decrement

-- window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' }) -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' }) -- make split windows equal width & height
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window

keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' }) -- open new tab
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' }) -- close current tab
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' }) --  go to next tab
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' }) --  go to previous tab
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' }) --  move current buffer to new tab

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
  { 'tpope/vim-fugitive', event = 'BufWinEnter' },
  { 'mbbill/undotree', event = 'BufWinEnter' },
}
