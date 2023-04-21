local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads nevovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
   use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'christoomey/vim-tmux-navigator'
  use 'declancm/maximize.nvim'

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  })
  use 'inkarkat/vim-ReplaceWithRegister'
  use 'numToStr/Comment.nvim'

  use 'nvim-lua/plenary.nvim' -- common utilitie  use 'nvim-lua/plenary.nvim' -- common utilitiess

  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }

  use 'nvim-tree/nvim-web-devicons' -- File icons

  use  'nvim-lualine/lualine.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1'
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- autocompletion
  use 'hrsh7th/cmp-buffer'          -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-path'          -- nvim-cmp source for buffer words
  use 'hrsh7th/nvim-cmp'

  -- snippets
  use "L3MON4D3/LuaSnip"
  use 'saadparwaiz1/cmp_luasnip' 
  use "rafamadriz/friendly-snippets"

  -- managing & installing lsp servers, linters & formatters
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- configuring lsp servers
  use 'neovim/nvim-lspconfig'    
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'glepnir/lspsaga.nvim' -- enheanced UI for LSP experience
  use 'onsails/lspkind-nvim' -- used to add vscode like icons to autocompletion windows
  use 'jose-elias-alvarez/typescript.nvim' -- add further functionalities for typescript server like renaming a file or updating imports, etc
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- formatting and linting
  use 'jose-elias-alvarez/null-ls.nvim'
  use "jay-babu/mason-null-ls.nvim"

  -- auto closing
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)


