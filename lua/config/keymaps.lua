-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- escape
keymap("i", "jk", "<ESC>", opts)

-- faster movement
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
