return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      --disable K
      keys[#keys + 1] = { "K", false }
      -- replace hover with gk
      keys[#keys + 1] = { "gk", vim.lsp.buf.hover, desc = "Hover" }
      keys[#keys + 1] = { "gh", vim.diagnostic.open_float, desc = "Show diagnostic" }
    end,

    -- diagnostic settings
    opts = {
      diagnostics = {
        -- disable the virtual text from diagnostics
        virtual_text = false,
        -- nice borders on the diagnostic menu
        float = {
          border = "rounded",
        },
      },
    },
  },
}
