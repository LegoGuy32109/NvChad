require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
-- local delete = vim.keymap.del
-- delete("n", "<C-i>")

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
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })

map("n", "<leader>th", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files hidden" }
)
map("n", "<leader>fA", function()
  telescope.find_files {
    no_ignore = true,
    hidden = true,
  }
end, { desc = "telescope find all files hidden and ignored" })

map("n", "<leader>f<S-f>", ":Telescope<cr>", { desc = "Telescope all Pickers" })
map("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live Grep" })
map("n", "<leader>fG", function()
  telescope.live_grep {
    additional_args = function()
      return { "--hidden" }
    end,
  }
end, {
  -- silent = true,
  desc = "Telescope live Grep (with hidden files)",
})
map("n", "<leader>fw", telescope.grep_string, { desc = "Telescope grep selected Word" })
map("n", "<leader>fr", telescope.resume, { desc = "Resume telescope search" })
map("n", "<leader>f/", telescope.search_history, { desc = "Recent / or ? searches" })
map("n", "<leader>fc", telescope.command_history, { desc = "Recent command" })
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
