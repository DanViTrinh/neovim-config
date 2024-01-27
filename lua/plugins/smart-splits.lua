-- plugin to make splitting and resizing windows easier

-- a bit hacky way to get default_amount, but this is faster than
-- retrieving it from the config of smart-splits
-- <A-l> is done using a more proper way, but it is a lot more code and might
-- hurt performance, idk though
-- https://www.reddit.com/r/lua/comments/j3xdco/global_variable_vs_require_performance/
-- TODO: ADD BUFF RESIZE
--https://github.com/mrjones2014/smart-splits.nvim
local default_amount = 3
return {
  "mrjones2014/smart-splits.nvim",
  keys = {
    {
      "<A-h>",
      function()
        require("smart-splits").resize_left(default_amount)
      end,
      desc = "Resize window left",
    },
    {
      "<A-j>",
      function()
        require("smart-splits").resize_down(default_amount)
      end,
      desc = "Resize window down",
    },
    {
      "<A-k>",
      function()
        require("smart-splits").resize_up(default_amount)
      end,
      desc = "Resize window up",
    },
    {
      "<A-l>",
      function()
        require("smart-splits").resize_right(require("smart-splits").default_amount)
      end,
      desc = "Resize window right",
    },

    {
      "<C-h>",
      function()
        require("smart-splits").move_cursor_left()
      end,
      desc = "Move cursor left",
    },
    {
      "<C-j>",
      function()
        require("smart-splits").move_cursor_down()
      end,
      desc = "Move cursor down",
    },
    {
      "<C-k>",
      function()
        require("smart-splits").move_cursor_up()
      end,
      desc = "Move cursor up",
    },
    {
      "<C-l>",
      function()
        require("smart-splits").move_cursor_right()
      end,
      desc = "Move cursor right",
    },

    {
      "<C-S-j>",
      function()
        require("smart-splits").swap_buf_down({ move_cursor = true })
      end,
      desc = "Swap with window below",
    },
    {
      "<C-S-k>",
      function()
        require("smart-splits").swap_buf_up({ move_cursor = true })
      end,
      desc = "Swap with window above",
    },
    -- TODO: figure out why swap right and left doesnt work
    -- {
    --   "<C-S-l>",
    --   function()
    --     require("smart-splits").swap_buf_right()
    --   end,
    --   desc = "Move cursor right",
    -- },
    -- {
    --   "<C-S-h>",
    --   function()
    --     require("smart-splits").swap_buf_left()
    --   end,
    --   desc = "Move cursor left",
    -- },
  },
  -- config = function()
  --   -- resizing splits
  --   -- these keymaps will also accept a range,
  --   -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
  --   vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
  --   vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
  --   vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
  --   vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
  --   -- moving between splits
  --   vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
  --   vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
  --   vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
  --   vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
  --   -- swapping buffers between windows
  --   vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
  --   vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
  --   vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
  --   vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)
  -- end,
}
