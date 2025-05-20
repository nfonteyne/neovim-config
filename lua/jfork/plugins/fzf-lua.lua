return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
      config = function()
      -- Set up the keymaps after the plugin is loaded
      local map = vim.keymap.set

      -- Main telescope-like keybindings with leader+f prefix
      map('n', '<leader>sf', '<cmd>FzfLua files<CR>', { desc = 'Find files' })
      map('n', '<leader>sg', '<cmd>FzfLua live_grep<CR>', { desc = 'Live grep' })
      map('n', '<leader>sb', '<cmd>FzfLua buffers<CR>', { desc = 'Buffers' })
      map('n', '<leader>sh', '<cmd>FzfLua help_tags<CR>', { desc = 'Help tags' })
    end,
}
