return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
      routes = {
      {
        view = "cmdline", -- or another view of your choice
        filter = { event = "msg_showmode" },
      },
    }, 
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
}
