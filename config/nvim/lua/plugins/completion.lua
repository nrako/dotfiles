return {
  {
    "Exafunction/codeium.nvim",
    event = "VeryLazy",

    -- enabled = os.getenv("USE_AI_TOOLS") == "true",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({})
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    -- required fixed version otherwise Codeium won't work
    commit = "6c84bc75c64f778e9f1dcb798ed41c7fcb93b639",
    dependencies = {
      {
        "Exafunction/codeium.nvim",
        opts = {},
        config = function(_, opts)
          require("codeium").setup(opts)
        end,
      },
    },

    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      table.insert(opts.sources, 1, { name = "codeium", group_index = 2 })
      opts.sorting = opts.sorting or require("cmp.config.default")().sorting
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-a>"] = cmp.mapping.complete(),
        ["<Tab>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
      })
      return opts
    end,
  },
}
