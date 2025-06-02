return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require('harpoon'):setup()
      end,
      keys = {
      {
        '<leader>q',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'harpoon file',
      },
      {
        '<C-e>',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'harpoon quick menu',
      },

      {
        '<leader>y',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = 'harpoon to file 1',
      },
      {
        '<leader>u',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = 'harpoon to file 2',
      },
      {
        '<leader>i',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = 'harpoon to file 3',
      },
      {
        '<leader>o',
        function()
          require('harpoon'):list():select(4)
        end,
        desc = 'harpoon to file 4',
      },

      {
        '<C-S-P>',
        function()
          require('harpoon'):list():prev()
        end,
        desc = 'harpoon to previous file',
      },
      {
        '<C-S-N>',
        function()
          require('harpoon'):list():next()
        end,
        desc = 'harpoon to next file',
      },
    },
}
