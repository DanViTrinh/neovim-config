-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- escape
keymap("i", "jk", "<ESC>", opts)

-- faster movement
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("v", "J", "5j", opts) -- faster movement
keymap("v", "K", "5k", opts) -- faster movement
-- join lines
keymap("n", "<leader>j", "J", { noremap = true, silent = true, desc = "Join lines" })

-- to move in terminal
keymap("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
keymap("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
keymap("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
keymap("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)

-- to escape terminal
-- disabled because it messes with moving in lazygit
-- keymap("t", "jk", [[<C-\><C-n>]], opts)
-- replaced with normal escape
keymap("t", "<Esc>", [[<C-\><C-n>]], opts)

-- copy to system clip board
keymap({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to system clipboard like y" })
keymap("n", "<leader>Y", [["+Y]], { desc = "Copy to system clipboard like Y" })

-- paste to system clipboard
keymap({ "n", "v" }, "<leader>p", [["+p]], { desc = "Paste from system clipboard like p" })
keymap({ "n", "v" }, "<leader>P", [["+P]], { desc = "Paste from system clipboard like P " })
