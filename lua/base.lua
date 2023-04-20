vim.cmd('autocmd!')
vim.scriptenconding = 'utf-8'

local opt = vim.opt

opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs
opt.tabstop = 2

-- Add asterisks in block comments
opt.formatoptions:append { 'r' }

opt.title = true
opt.autoindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.shell = 'zsh'
opt.inccommand = 'split'
opt.breakindent = true
opt.shiftwidth = 2
opt.ai = true -- Auto indent
opt.si = true -- Smart indent

-- line wrap
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smarttab = true

opt.clipboard:append { 'unnamedplus' }

opt.path:append { '**' }

