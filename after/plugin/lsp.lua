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

cmp.setup({
  mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp_action.tab_complete(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),
  sources = {
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
