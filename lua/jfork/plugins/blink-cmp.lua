return {
  "saghen/blink.cmp",
  version = "*",
  opts = {
    keymap = {
      -- preset = "default"
      ['<Tab>'] = { 'show_and_insert_or_accept_single', 'select_next' },
      ['<S-Tab>'] = { 'show_and_insert_or_accept_single', 'select_prev' },

      ['<C-space>'] = { 'show', 'fallback' },

      ['<C-n>'] = { 'select_next', 'fallback' },
      ['<C-p>'] = { 'select_prev', 'fallback' },
      ['<Right>'] = { 'select_next', 'fallback' },
      ['<Left>'] = { 'select_prev', 'fallback' },

      ['<C-y>'] = { 'select_and_accept', 'fallback' },
      ['<C-e>'] = { 'cancel', 'fallback' },
    },
    sources = {
      default = { "lsp" },
    },
  },
}
