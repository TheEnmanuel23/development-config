local status, mason = pcall(require, 'mason')
if (not status) then return end

local status2, mason_lspconfig = pcall(require, 'mason-lspconfig')
if (not status2) then return end

local status3, mason_null_ls = pcall(require, 'mason-null-ls')
if (not status3) then return end

mason.setup {}

mason_lspconfig.setup {
  ensure_installed = {
    "tsserver",
    "cssmodules_ls",
    "cssls",
    "emmet_ls",
    "html",
    "lua_ls",
    "tailwindcss"
  },
  automatic_installation = true
}

mason_null_ls.setup {
  ensure_installed = {
    "prettier",
    "stylelua",
    "eslint_d"
  }
}


