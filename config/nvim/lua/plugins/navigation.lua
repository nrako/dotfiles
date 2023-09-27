return {
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    opts = {
      at_edge = "stop",
    },
    -- NOTE:: the keyamps must be "overriden" in the /nvim/lua/config/keymaps.lua, defining the keymaps here doesn't work
    -- keys = {}
  },
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    config = function()
      require("window-picker").setup()
    end,
  },
}
