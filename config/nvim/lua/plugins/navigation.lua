return {
  {
    "numToStr/Navigator.nvim",
    opts = {
      disable_on_zoom = true,
    },
    keys = {
      { "<C-h>", "<cmd>NavigatorLeft<cr>", desc = "Go left" },
      { "<C-j>", "<cmd>NavigatorDown<cr>", desc = "Go Down" },
      { "<C-k>", "<cmd>NavigatorUp<cr>", desc = "Go Up" },
      { "<C-l>", "<cmd>NavigatorRight<cr>", desc = "Go Right" },
    },
  },
}
