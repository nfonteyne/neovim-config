-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-----------------
-- LSP keymaps --
-----------------

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local function opts(desc)
      return { buffer = ev.buf, silent = true, desc = 'LSP ' .. desc }
    end

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts('Go to definition'))
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts('Go to declaration'))
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts('Go to references'))
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts('Hover documentation'))
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts('Rename symbol'))
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts('Code action'))

    -- Force pull diagnostics for servers like ty
    vim.schedule(function()
      local client = vim.lsp.get_client_by_id(ev.data.client_id)
      if client and client.server_capabilities.diagnosticProvider then
        client.request('textDocument/diagnostic', {
          textDocument = vim.lsp.util.make_text_document_params(ev.buf),
        }, nil, ev.buf)
      end
    end)

  end,
})
