return {
  {
    'ribru17/bamboo.nvim',
    lazy = true,
    -- priority = 1000,
    -- config = function()
    --   require('bamboo').setup {}
    --   require('bamboo').load()
    -- end,
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
  priority = 1000,
  config = function()
    -- require("kanagawa").setup({
    --   overrides = function(colors)
    --     local theme = colors.theme
    --     return {
    --       -- Your existing overrides
    --       NormalFloat = { bg = "none" },
    --       FloatBorder = { bg = "none" },
    --       FloatTitle = { bg = "none" },
    --       NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
    --       LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
    --       MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
    --
    --       -- Add these for noice to use proper kanagawa colors
    --       NoiceCmdline = { bg = theme.ui.bg_p1, fg = theme.ui.fg },
    --       NoiceCmdlineIcon = { fg = theme.syn.identifier },
    --       NoiceCmdlinePopup = { bg = theme.ui.bg_p1, fg = theme.ui.fg },
    --       NoiceCmdlinePopupBorder = { fg = theme.ui.border },
    --       NoicePopupmenu = { bg = theme.ui.bg_p1 },
    --       NoicePopupmenuBorder = { fg = theme.ui.border },
    --       NoiceConfirm = { bg = theme.ui.bg_p1 },
    --       NoiceConfirmBorder = { fg = theme.ui.border },
    --       NoiceMini = { bg = theme.ui.bg_p1 },
    --     }
    --   end,
    -- })
    vim.cmd("colorscheme kanagawa")
  end
}

}
