--- Remove the tildes (~) from the gutter to indicate empty line
vim.opt.fillchars = { eob = " " }
-- disable relative line numbers
vim.opt.relativenumber = false

return {
  { "rebelot/kanagawa.nvim" },
  { "LazyVim/LazyVim", opts = { colorscheme = "kanagawa" } },
  { "catppuccin", event = "VeryLazy" },
}
