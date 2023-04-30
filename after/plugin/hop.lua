local setup, hop = pcall(require, 'hop')

if not setup then
 return
end

hop.setup {}

local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- search before cursor
keymap.set('n', '<space>sb', ':HopWordBC<cr>', opts)

-- search after cursor
keymap.set('n', '<space>sa', ':HopWordAC<cr>', opts)

-- search by pattern
keymap.set('n', '<space>sp', ':HopPattern<cr>')

