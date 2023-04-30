local status, toggleterm = pcall(require, "toggleterm")

if (not status) then return end

toggleterm.setup {
  open_mapping = '<F1>',
  direction = 'float',
  close_on_exit = true,
  float_opts = {
    border = 'curved',
  },
}

local Terminal = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({ cmd = 'lazygit', hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

