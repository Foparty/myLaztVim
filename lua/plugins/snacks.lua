-- lazy.nvim
return {

  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      explorer = {
        replace_netrw = true,
      },
      picker = {
        layout = {
          -- fullscreen = true,
          cycle = false,
          layout = {
            width = 0.95,
            height = 0.95,
          },
        },
        matcher = {
          frecency = true,
        },
        sources = {
          explorer = {
            auto_close = true,
            layout = {
              layout = {
                width = 0.2,
                height = 1,
              },
              fullscreen = false,
            },
          },
        },
      },
    },
    keys = {
      {
        "<C-e>",
        function()
          Snacks.explorer()
        end,
        desc = "Explorer Toggle",
      },
      {
        "<leader>,",
        function()
          Snacks.picker.buffers({
            on_show = function()
              vim.cmd.stopinsert()
            end,
            sort_lastused = true,
          })
        end,
        desc = "Buffers",
      },
      {
        "<leader>.",
        false,
      },
      {
        "<leader>fe",
        false,
      },
      {
        "<leader>fE",
        false,
      },
      {
        "<leader>fb",
        false,
      },
      {
        "<leader>fB",
        false,
      },
    },
  },
}
