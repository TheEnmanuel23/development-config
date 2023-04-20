local status, nvim_lsp = pcall(require, 'lspconfig')

if (not status) then return end

local protocol = require('vim.lsp.protocol')

nvim_lsp.tsserver.setup {}

nvim_lsp.lua_ls.setup {
  -- on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the 'vim' global
        globals = { 'vim' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true)
      }
    }
  }
}

