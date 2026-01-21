vim.lsp.enable('luals')
vim.lsp.enable('ty')

vim.diagnostic.config({
  virtual_text = false,  -- disable inline text
  virtual_lines = { current_line = true }  -- show below current line only
})
