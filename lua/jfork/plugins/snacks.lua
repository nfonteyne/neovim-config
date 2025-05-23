  return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      explorer = { enabled = true },
      picker = { enabled = true },
      finder = { enabled = true },
      -- ...other options
    },
    keys = {
      { "<leader>lg", function() require("snacks").lazygit() end, desc = "Lazygit" },
      { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Lazygit Logs" },
      { "<leader>rN", function() require("snacks").rename.rename_file() end, desc = "Fast Rename Current File" },
      { "<leader>es", function() require("snacks").explorer() end, desc = "Open snacks explorer" },
    }
  }

