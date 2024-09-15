vim.opt.termguicolors = true

return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        --        numbers = 'none',
        buffer_close_icon = '',
        modified_icon = '',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        diagnostics = 'nvim_lsp',
        separator_style = 'slant' or 'padded_slant',
        show_tab_indicators = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        always_show_bufferline = true,
      },
    }
  end,
}
