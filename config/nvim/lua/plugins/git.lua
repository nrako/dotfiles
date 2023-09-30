return {
  {
    "rhysd/git-messenger.vim",
    event = "VeryLazy",
    keys = {
      { "<leader>gp", "<cmd>GitMessenger<cr>", desc = "Git commit msg Peek" },
    },
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
      message_template = "  <author>, <date> • <summary>",
      date_format = "%r",
    },
  },
  {
    "linrongbin16/gitlinker.nvim",
    event = "VeryLazy",
    config = function()
      require("gitlinker").setup({})
    end,
    -- this setup `<leader>gl` and `<leqader>gL` to respectively copy the link
    -- or directly open the link with the system
  },
}
