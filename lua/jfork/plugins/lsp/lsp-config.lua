return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import mason_lspconfig plugin
    local mason_lspconfig = require("mason-lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local keymap = vim.keymap -- make sure this is defined
        local opts = { buffer = ev.buf, silent = true }

        opts.desc = "Show LSP references"
        keymap.set("n", "gR", "<cmd>FzfLua lsp_references<CR>", opts)

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

        opts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions<CR>", opts)

        opts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations<CR>", opts)

        opts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>FzfLua lsp_typedefs<CR>", opts)

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>FzfLua diagnostics_document<CR>", opts)

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

        -- opts.desc = "Go to previous diagnostic"
        -- keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

        -- opts.desc = "Go to next diagnostic"
        -- keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts)

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
      end,
    })

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN]  = " ",
          [vim.diagnostic.severity.INFO]  = " ",
          [vim.diagnostic.severity.HINT]  = "󰠠 ",
        },
      }
    })

    mason_lspconfig.setup({
      -- default handler for installed servers
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
      ["lua_ls"] = function()
        -- configure lua server (with special settings)
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              -- make the language server recognize "vim" global
              diagnostics = {
                globals = { "vim" },
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        })
      end,
    })

    --HACK: try to import vim globally to avoid diagnistics 
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
      }
    })

  end,
}

--
-- lsp-config.lua
--
-- return {
--   "neovim/nvim-lspconfig",
--   event = { "BufReadPre", "BufNewFile" },
--   dependencies = {
--     "hrsh7th/cmp-nvim-lsp",
--     { "antosha417/nvim-lsp-file-operations", config = true },
--     { "folke/neodev.nvim", opts = {} },
--   },
--   config = function()
--     -- Initialize neodev FIRST - this helps with Neovim Lua development and
--     -- automatically sets up vim as a global
--     require("neodev").setup({})
--
--     -- Import required modules
--     local lspconfig = require("lspconfig")
--     local mason_lspconfig = require("mason-lspconfig")
--     local cmp_nvim_lsp = require("cmp_nvim_lsp")
--
--     -- Set up LSP keybindings when an LSP attaches to a buffer
--     vim.api.nvim_create_autocmd("LspAttach", {
--       group = vim.api.nvim_create_augroup("UserLspConfig", {}),
--       callback = function(ev)
--         local keymap = vim.keymap
--         local opts = { buffer = ev.buf, silent = true }
--
--         opts.desc = "Show LSP references"
--         keymap.set("n", "gR", "<cmd>FzfLua lsp_references<CR>", opts)
--
--         opts.desc = "Go to declaration"
--         keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
--
--         opts.desc = "Show LSP definitions"
--         keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions<CR>", opts)
--
--         opts.desc = "Show LSP implementations"
--         keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations<CR>", opts)
--
--         opts.desc = "Show LSP type definitions"
--         keymap.set("n", "gt", "<cmd>FzfLua lsp_typedefs<CR>", opts)
--
--         opts.desc = "See available code actions"
--         keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
--
--         opts.desc = "Smart rename"
--         keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
--
--         opts.desc = "Show buffer diagnostics"
--         keymap.set("n", "<leader>D", "<cmd>FzfLua diagnostics_document<CR>", opts)
--
--         opts.desc = "Show line diagnostics"
--         keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
--
--         opts.desc = "Go to previous diagnostic"
--         keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
--
--         opts.desc = "Go to next diagnostic"
--         keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
--
--         opts.desc = "Show documentation for what is under cursor"
--         keymap.set("n", "K", vim.lsp.buf.hover, opts)
--
--         opts.desc = "Restart LSP"
--         keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
--       end,
--     })
--
--     -- Set up capabilities for autocompletion
--     local capabilities = cmp_nvim_lsp.default_capabilities()
--
--     -- Configure diagnostic symbols
--     vim.diagnostic.config({
--       signs = {
--         text = {
--           [vim.diagnostic.severity.ERROR] = " ",
--           [vim.diagnostic.severity.WARN]  = " ",
--           [vim.diagnostic.severity.INFO]  = " ",
--           [vim.diagnostic.severity.HINT]  = "󰠠 ",
--         },
--       }
--     })
--
--     -- Simple setup for mason-lspconfig
--     mason_lspconfig.setup()
--
--     -- Set up a handler for all installed servers
--     local default_handler = function(server)
--       lspconfig[server].setup({
--         capabilities = capabilities,
--       })
--     end
--
--     -- Set up all installed servers
--     local servers = mason_lspconfig.get_installed_servers()
--     for _, server in ipairs(servers) do
--       -- Skip lua_ls as we'll configure it separately
--       if server ~= "lua_ls" then
--         default_handler(server)
--       end
--     end
--
--     -- Configure lua_ls with explicit settings for vim global
--     lspconfig.lua_ls.setup({
--       capabilities = capabilities,
--       settings = {
--         Lua = {
--           diagnostics = {
--             globals = { "vim" },  -- Explicitly define vim as a global
--           },
--           workspace = {
--             -- Make the server aware of Neovim runtime files
--             library = vim.api.nvim_get_runtime_file("", true),
--             checkThirdParty = false,
--           },
--           completion = {
--             callSnippet = "Replace",
--           },
--         },
--       },
--     })
--   end,
-- }
