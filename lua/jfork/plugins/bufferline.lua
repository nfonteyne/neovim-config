return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = {'nvim-tree/nvim-web-devicons'},
  config = function()
    require("bufferline").setup({})

    -- Set up the keymaps after the plugin is loaded
    local map = vim.keymap.set

    -- Main telescope-like keybindings with leader+f prefix
    map('n', '<leader>]', '<cmd>BufferLineCycleNext<CR>', { desc = 'BufferLine: Next Buffer' })
    map('n', '<leader>[', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Bufferline: Prev Buffer' })
  end,
}
