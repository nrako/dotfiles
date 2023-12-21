return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       ruby_ls = {},
  --     },
  --   },
  -- },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "ruby",
      })
      return opts
    end,
  },
  { "slim-template/vim-slim", ft = "slim" },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "solargraph",
      },
    },
  },
}
