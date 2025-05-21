return {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      -- local capabilities = vim.lsp.protocol.make_client_capabilities()
      -- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require('mason').setup()
      local mason_lspconfig = require 'mason-lspconfig'
      mason_lspconfig.setup {
        ensure_installed = { 'pyright', 'html', 'cssls', 'ts_ls' },
      }

      require('lspconfig').pyright.setup {
        capabilities = capabilities,
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace"
            }
          }
        }
      }

      require('lspconfig').html.setup {
        capabilities = capabilities,
        settings = {
          html = {
            validate = true,
            format = {
              enable = true,
            },
            hover = true,
            diagnostics = {
              enable = true,
            },
          },
        },
      }
      require('lspconfig').cssls.setup {
        capabilities = capabilities,
      }
      require('lspconfig').ts_ls.setup {
        capabilities = capabilities,
      }
    end,
  }

