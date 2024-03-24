-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- specify kmonad files to lisp
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.kbd",
  command = "set filetype=lisp",
})

-- for conf files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.conf",
  command = "set filetype=conf",
})
