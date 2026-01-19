return {
  {
    'ribru17/bamboo.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('bamboo').setup {}
      require('bamboo').load()
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme rose-pine")
    -- end
  },
  {
    "rebelot/kanagawa.nvim",
    -- priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme kanagawa")
    -- end
  },
  {
  "neanias/everforest-nvim",
    name = "everforest",
    version = false,
    -- lazy = false,
    -- priority = 1000, -- make sure to load this before all the other start plugins
    -- -- Optional; default configuration will be used if setup isn't called.
    -- config = function()
    --   require("everforest").setup({})
    --   require("everforest").load()
    --
    -- end,
   }
}
