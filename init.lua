-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- not a very elegant solution since copilot is loaded even though it is not used
-- https://www.reddit.com/r/neovim/comments/13td06h/copilotlua_is_there_a_way_to_start_with_copilot/
vim.cmd(":Copilot disable")
