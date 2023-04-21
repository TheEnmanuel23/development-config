local status, autopairs = pcall(require, 'nvim-autopairs')

if (not status) then return end

autopairs.setup {
  disable_filetype = { "TelescopePrompt", "vim" },
   ts_config = {
        -- lua = {'string'},-- it will not add a pair on that treesitter node
        -- javascript = {'template_string'},
        -- java = false,-- don't check treesitter on java
    }
}

