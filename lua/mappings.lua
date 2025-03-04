require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
-- local tnoremap = vim.keymap.

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- map motions to glorious engrammer design
-- map('n', 'h', ',', { desc = 'move F or T times backward' })
-- map('n', ',', ';', { desc = 'move F or T times forward' })
-- map('n', 'j', 'h', { desc = 'move N characters to left' })
-- map('n', 'l', 'j', { desc = 'move N characters to down' })
-- map('n', ';', 'l', { desc = 'move N characters to right' })
-- map('c', 'h', ',', { desc = 'move F or T times backward' })
-- map('c', ',', ';', { desc = 'move F or T times forward' })
-- map('c', 'j', 'h', { desc = 'move N characters to left' })
-- map('c', 'l', 'j', { desc = 'move N characters to down' })
-- map('c', ';', 'l', { desc = 'move N characters to right' })
-- map('v', 'h', ',', { desc = 'move F or T times backward' })
-- map('v', ',', ';', { desc = 'move F or T times forward' })
-- map('v', 'j', 'h', { desc = 'move N characters to left' })
-- map('v', 'l', 'j', { desc = 'move N characters to down' })
-- map('v', ';', 'l', { desc = 'move N characters to right' })

-- custom windows
map('n', '<M-;>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<M-j>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<M-l>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<M-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
map('n', '<M-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<M-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<M-Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<M-Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
map('n', '<S-Down>', '<C-d>', { desc = 'Move down file half a view' })
map('n', '<S-Up>', '<C-u>', { desc = 'Move up file half a view' })

-- Gitsigns integration https://github.com/lewis6991/gitsigns.nvim?tab=readme-ov-file#-keymaps
-- local gitsigns = require('gitsigns')
-- map('n', '<leader>hb', gitsigns.blame_line({ full = true }), { desc = 'Get full git blame on current line' })
-- map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Reset the current hunk' })
-- map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Stage the current hunk' })
-- map('n', '<leader>hd', gitsigns.diffthis, { desc = 'Get git diff against base' })
-- map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = 'Toggle inline git blame' })
-- map('n', '<leader>td', gitsigns.toggle_deleted, { desc = 'See deleted changes' })
-- map('n', '<leader>tw', gitsigns.toggle_word_diff, { desc = 'activate word diff' })
