local status, fterm = pcall(require, 'FTerm')

if (not status) then return end

vim.api.nvim_create_user_command('FTermOpen', fterm.open, { bang = true })
vim.api.nvim_create_user_command('FTermClose', fterm.close, { bang = true })
vim.api.nvim_create_user_command('FTermExit', fterm.exit, { bang = true })
vim.api.nvim_create_user_command('FTermToggle', fterm.toggle, { bang = true })
vim.api.nvim_create_user_command('Lazygit', function()
  fterm.run('lazygit')
end, { bang = true})

local keymap = vim.keymap

keymap.set('n', '<F1>', ':FTermOpen<CR>')
keymap.set('n', '<F3>', ':FTermClose<CR>')
keymap.set('n', '<F4>', ':FTermExit<CR>')
keymap.set('n', '<F5>', ':FTermToggle<CR>')
keymap.set('n', '<F6>', ':Lazygit<CR>')
