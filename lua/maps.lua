-- vim.g.mapleader = "\\"

local keymap = vim.keymap

-- General keymaps
keymap.set('i', "jk", "<ESC>")
keymap.set('n', "<leader>nh", ":nohl<CR>")

-- Do not  yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-s>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'to', ':tabnew<CR>', { silent = true })
keymap.set('n', 'tx', ':tabclose<CR>', { silent = true })
keymap.set('n', 'tn', ':tabn<CR>', { silent = true })
keymap.set('n', 'tp', ':tabp<CR>', { silent = true })
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })


-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>W')
keymap.set('n', 'sv', ':vsplit<Return><C-w>W')
keymap.set('n', 'sx', ':close<CR>')

-- Move window
keymap.set('n', '<Space>', '<C-w>W')
keymap.set('', 'w<left>', '<C-w>h')
keymap.set('', 'w<up>', '<C-w>k')
keymap.set('', 'w<down>', '<C-w>j')
keymap.set('', 'w<right>', '<C-w>l')
keymap.set('', 'wh', '<C-w>h')
keymap.set('', 'wk>', '<C-w>k')
keymap.set('', 'wj', '<C-w>j')
keymap.set('', 'wl', '<C-w>k')


-- Resize window
keymap.set('n', '<Space>l', '<C-w>>')
keymap.set('n', '<Space>h', '<C-w><')
keymap.set('n', '<Space>k', '<C-w>+')
keymap.set('n', '<Space>j', '<C-w>-')

-- save and quit
keymap.set('n', '<leader>w', ':w<Cr>')
keymap.set('n', '<leader>x', ':q<Cr>')
keymap.set('n', '<space>wq', ':wq<Cr>')
