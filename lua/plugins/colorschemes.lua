return {
  {
    {
      "catppuccin/nvim",
      name = "catppuccin",
      event = "User ColorSchemeLoad",

      opts = {
        background = {
          light = "latte",
          dark = "frappe",
        },
      },
    },
    { "olivercederborg/poimandres.nvim", event = "User ColorSchemeLoad" },
    { "Shatur/neovim-ayu", event = "User ColorSchemeLoad" },
    { "nyoom-engineering/oxocarbon.nvim", event = "User ColorSchemeLoad" },
    { "joshdick/onedark.vim", event = "User ColorSchemeLoad" },
    { "folke/tokyonight.nvim", event = "User ColorSchemeLoad" },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin",
      },
    },
  },
}
