-- My options
local opts = { noremap = true, silent = true }
local term_option = { silent = true }

-- Shorten function name
local map = vim.api.nvim_set_keymap
-- local wk = require("plugins/which_key")

-- Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Modes
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"

-- Normal --
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Basics Keymaps
map('n', "<leader>q", "<cmd>q<cr>", { desc = "Quit"})
map('n', "<leader>w", "<cmd>w<cr>", { desc = "Save"})

-- Tree
map('n', "<leader>ee", "<cmd>NvimTreeToggle<cr>", {desc = "Open/Close Tree"})
map('n', "<leader>ef", "<cmd>NvimTreeFocus<cr>", {desc = "Focus on Tree"})
map('n', "<leader>el", "<cmd>NvimTreeFindFile<cr>", {desc = "Actually File on Tree"})
map("n", '<leader>ec', "<cmd>NvimTreeCollapse<cr>", {desc = "Close Directorys Tree"})

-- Telescope
map('n', "<leader>ff", "<cmd>Telescope find_files<cr>", {desc = "Find Files"})
map('n', "<leader>fg", "<cmd>Telescope live_grep<cr>", {desc = "Telescope Live Grep"})

-- ToDO Comments
map('n', "<leader>dq", "<cmd>TodoQuickFix<cr>", {desc = "QuickFix List"})
map('n', "<leader>dt", "<cmd>TodoLocList<cr>", {desc = "TODO List"})
map('n', "<leader>dr", "<cmd>Trouble todo<cr>", {desc = "Trouble List"})
map('n', "<leader>df", "<cmd>TodoTelescope<cr>", {desc = "Find TODO with Telescope"})

