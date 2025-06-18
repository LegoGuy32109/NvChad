require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
-- local tnoremap = vim.keymap.

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i", "v" }, "<C-S-s>", "<cmd> wa <cr>")
map({ "n", "i", "v" }, "<C-q>", "<cmd> q <cr>")
map({ "n", "i", "v" }, "<C-S-q>", "<cmd> qa <cr>")

map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

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
-- map('n', '<M-;>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- map('n', '<M-j>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- map('n', '<M-l>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- map('n', '<M-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- map('n', '<M-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- map('n', '<M-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- map('n', '<M-Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- map('n', '<M-Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
map("n", "<S-Down>", "<C-d>", { desc = "Move down file half a view" })
map("n", "<S-Up>", "<C-u>", { desc = "Move up file half a view" })

local telescope = require "telescope.builtin"
map("n", "<leader>f<S-f>", ":Telescope<cr>", { desc = "Telescope all Pickers" })
map("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live Grep" })
map("n", "<leader>fw", telescope.grep_string, { desc = "Telescope grep selected Word" })
map("n", "<leader>fr", telescope.resume, { desc = "Resume telescope search" })
map("n", "<leader>f/", telescope.search_history, { desc = "Execute recent / or ? searches" })
map("n", "<leader>fc", telescope.command_history, { desc = "Execute recent command" })
map("n", "<leader>fp", telescope.registers, { desc = "Paste something in registers" })
map("n", "<leader>fj", telescope.jumplist, { desc = "Jump to point in jump list" })
map("n", "zs", telescope.spell_suggest, { desc = "Spelling corrections" })
map("n", "<leader>fk", telescope.keymaps, { desc = "Find Keymaps" })
map("n", "<leader>fq", telescope.quickfix, { desc = "Search items in quickfix" })

-- toggle for code warnings/errors
vim.g["diagnostics_active"] = true
map("n", "<leader>dt", function()
  if vim.g.diagnostics_active then
    vim.g.diagnostics_active = false
  else
    vim.g.diagnostics_active = true
  end
  vim.diagnostic.enable(vim.g.diagnostics_active)
end, { desc = "[D]iagnostic [T]oggle" })
