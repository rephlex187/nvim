local keymap = vim.keymap.set
vim.g.copilot_no_tab = true

-- Leader Key
keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "

keymap('n', 'x', '"_x')
-- This is how to assign the leader key to a function

-- Increment/decrement
keymap('n', '+', '<C-a>')
keymap('n', '-', '<C-x>')

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G')

-- stay at end after yank
keymap('v', 'y', 'ygv<Esc>')

-- close buffer
keymap('n', 'tc', '<cmd>Bdelete!<CR>')
keymap('n', 'ca', '<cmd>bufdo bd<CR>')
keymap('n', 'cq', '<cmd>call setqflist([])<CR>')

-- nav buffers
keymap('n', 'ti', ':bnext<CR>')
keymap('n', 'tm', ':bprevious<CR>')

-- Split window
keymap('n', 'ss', ':vsplit<Return><C-w>w')
keymap('n', 'sh', ':split<Return><C-w>w')

-- window movement
keymap("n", "<C-Up>", "<C-w>k")
keymap("n", "<C-Down>", "<C-w>j")
keymap("n", "<C-Left>", "<C-w>h")
keymap("n", "<C-Right>", "<C-w>l")

-- fugitive
keymap("n", "<leader>g", ":Gedit :<CR>")
keymap("n", "<leader>p", ":G push")
keymap("t", "<Esc>", "<C-\\><C-n>")

-- basic func maps
keymap("n", "<leader>q", ":q<CR>")
keymap("n", "<leader>w", ":w<CR>")

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")


-- Line movements
keymap('n', '<C-k>', ':move .-2<CR>==')
keymap('n', '<C-j>', ':move .+1<CR>==')

-- Line movements in Visual mode
keymap('v', '<C-k>', ":move '<-2<CR>gv=gv")
keymap('v', '<C-j>', ":move '>+1<CR>gv=gv")

-- New terminal
keymap('n', '<F5>', ':term<CR>', { noremap = true, silent = true })

-- Copilot
keymap('i', '<C-c>', 'copilot#Accept("\\<CR>")',
    { noremap = true, silent = true, expr = true, replace_keycodes = false })
keymap('i', '<C-x>', 'copilot#Next()',
    { noremap = true, silent = true, expr = true, replace_keycodes = false })

keymap('n', '<C-0>', ':CodeCompanionChat<CR>')
keymap("n", "<C-9>", "<cmd>CodeCompanionActions<cr>")

-- Remove all macro recording keybiinds
keymap('n', 'q', '<Nop>')
