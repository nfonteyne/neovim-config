return {
  {
    'ribru17/bamboo.nvim',
    lazy = true,
    priority = 1000,
    -- config = function()
    --   require('bamboo').setup {}
    --   require('bamboo').load()
    -- end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    -- config = function()
    --   vim.cmd("colorscheme rose-pine")
    -- end
  },
  {
    "rebelot/kanagawa.nvim",
    name = 'kanagawa',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme kanagawa")
    end
  }

}
