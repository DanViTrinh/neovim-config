return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<Leader>uC",
      function()
        vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
        require("telescope.builtin").colorscheme({ enable_preview = true })
      end,
      desc = "Change colorscheme temporarly",
      noremap = true,
    },
  },
}
