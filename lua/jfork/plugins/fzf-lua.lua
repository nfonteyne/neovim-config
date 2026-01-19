return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {
    -- Add custom configuration for diagnostics_document
    diagnostics_document = {
      winopts = {
        -- Use a single fullscreen window instead of split
        fullscreen = true,
        -- Or customize dimensions if you prefer
        -- height = 0.9,
        -- width = 0.8,
        -- You can also change the preview layout
        preview = {
          layout = "vertical",     -- or "horizontal"
          vertical = "down:60%"    -- preview on bottom taking 60% height
        }
      }
    }
  },
      config = function()
      -- Set up the keymaps after the plugin is loaded
      local map = vim.keymap.set

      -- Main telescope-like keybindings with leader+f prefix
      map('n', '<leader>sf', '<cmd>FzfLua files<CR>', { desc = 'Find files' })
      map('n', '<leader>sg', '<cmd>FzfLua live_grep<CR>', { desc = 'Live grep' })
      map('n', '<leader>sb', '<cmd>FzfLua buffers<CR>', { desc = 'Buffers' })
      map('n', '<leader>sh', '<cmd>FzfLua help_tags<CR>', { desc = 'Help tags' })
      map('n', "<leader>sk", "<cmd>FzfLua keymaps<cr>", {desc = "Key Maps"})
      map('n', "<leader>sM", "<cmd>FzfLua man_pages<cr>", {desc = "Man Pages"})
      map('n', "<leader>sc", "<cmd>FzfLua colorschemes<cr>", {desc = "colorscheme"})
    end,
}
