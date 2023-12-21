-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

-- local debounced_save = require("throttle-debounce").debounce_trailing(function()
--   vim.cmd("wall")
-- end, 150)

local function save()
  -- debounced_save()
  vim.cmd("silent! wa")
end

vim.api.nvim_create_autocmd({ "FocusLost" }, {
  callback = save,
  pattern = "*",
})
