local lsp_zero = require('lsp-zero')

-- lsp_attach is where you enable features that only work
-- if there is a language server active in the file
local lsp_attach = function(client, bufnr)
    lsp_zero.default_keymaps{buffer = bufnr, preserve_mappings=false}
end

lsp_zero.extend_lspconfig({
  sign_text = true,
  lsp_attach = lsp_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

-- enable format on save
lsp_zero.format_on_save({
    format_opts = {
        async=false,
        timeout_ms=10000,
    },
    servers = {
        ['rust_analyzer']={'rust'}
    }
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
-- from https://github.com/zbirenbaum/copilot-cmp
local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_text(0, line-1, 0, line-1, col, {})[1]:match("^%s*$") == nil
end

cmp.setup({
  mapping = cmp.mapping.preset.insert {
    ["<Tab>"] = vim.schedule_wrap(function(fallback)
      if cmp.visible() and has_words_before() then
        cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
      else
        fallback()
      end
    end),
  },sources = {
    {name = 'nvim_lsp'},
    {name= 'copilot'}
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  }
})
