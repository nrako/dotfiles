return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        graphql = {},
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "graphql",
      })
      return opts
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "graphql-language-service-cli",
      },
    },
  }
}
