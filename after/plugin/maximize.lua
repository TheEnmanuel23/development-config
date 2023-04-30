local status, maximize = pcall(require, 'maximize')

maximize.setup {}

vim.keymap.set('n', '<space>z', "<Cmd>lua require('maximize').toggle()<CR>")

