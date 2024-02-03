--HACK:: to get image.nvim to work, try other places
-- Example for configuring Neovim to load user-installed installed Lua rocks:
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- not a very elegant solution since copilot is loaded even though it is not used
-- https://www.reddit.com/r/neovim/comments/13td06h/copilotlua_is_there_a_way_to_start_with_copilot/
vim.cmd(":Copilot disable")
