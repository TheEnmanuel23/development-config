local status, saga = pcall(require, 'lspsaga')

if (not status) then return end

saga.setup {}

local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

-- Diagnostic jump
-- You can use <C-o> to jump back to your previous location
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)

-- Rename all occurrences of the hovered word for the entire file
keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)

-- Rename all occurrences of the hovered word for the selected files
keymap("n", "<leader>rn", "<cmd>Lspsaga rename ++project<CR>", opts)

-- Peek definition
-- You can edit the file containing the definition in the floating window
-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
-- It also supports tagstack
-- Use <C-t> to jump back
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>", opts)

-- Go to definition
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts)

-- code actions
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)

-- rename file using tyescript server
keymap("n", "<leader>rf", "<cmd>:TypescriptRenameFile<CR>", opts)
