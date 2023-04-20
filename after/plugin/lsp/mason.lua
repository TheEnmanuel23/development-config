local status, mason = pcall(require, 'mason')

if (not status) then return end

local status2, lspconfig = pcall(require, 'mason-lspconfig')

if (not status2) then return end

mason.setup {}

local servers = {
  "tsserver",
  "cssmodules_ls",
  "cssls",
  "emmet_ls",
  "html",
  "lua_ls"
}

lspconfig.setup {
  ensure_installed = servers,
  automatic_installation = true
}
