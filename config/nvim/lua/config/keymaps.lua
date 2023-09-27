-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

-- the function map(mode, lhs, rhs, opts)
-- {mode}  Mode short-name (map command prefix: "n", "i", "v", "x", …) or "!" for |:map!|, or empty string for |:map|.
-- {lhs}   Left-hand-side |{lhs}| of the mapping.
-- {rhs}   Right-hand-side |{rhs}| of the mapping.
-- {opts}  Optional parameters map. Accepts all |:map-arguments| as keys excluding |<buffer>| but including |noremap| and "desc". "desc" can be used to give a description to keymap. When called from Lua, also accepts a "callback" key that takes a Lua function to call when the mapping is executed. Values are Booleans. Unknown key is an error.
local function noremap(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- the function map(mode, lhs, rhs, opts)
-- {mode}  Mode short-name (map command prefix: "n", "i", "v", "x", …) or "!" for |:map!|, or empty string for |:map|.
-- {lhs}   Left-hand-side |{lhs}| of the mapping.
-- {rhs}   Right-hand-side |{rhs}| of the mapping.
-- {opts}  Optional parameters map. Accepts all |:map-arguments| as keys excluding |<buffer>| but including |noremap| and "desc". "desc" can be used to give a description to keymap. When called from Lua, also accepts a "callback" key that takes a Lua function to call when the mapping is executed. Values are Booleans. Unknown key is an error.
local function map(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- ===
-- === Remap space as leader key
-- ===
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local bufopts = { noremap = true, silent = true }
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", bufopts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", bufopts)
--- buffers
if Util.has("bufferline.nvim") then
  map("n", "<M-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "<M-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
  map("n", "<M-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "<M-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
end

--- KEYMAPS for smart-splits
---
-- unfortunately those keymaps for reason unclear to me can't be set through the lazyvium plugin import interface
--
-- change focus window
map("n", "<C-h>", require("smart-splits").move_cursor_left, { desc = "Move to left window" })
map("n", "<C-j>", require("smart-splits").move_cursor_down, { desc = "Move to down window" })
map("n", "<C-l>", require("smart-splits").move_cursor_right, { desc = "Move to right window!!!" })
map("n", "<C-k>", require("smart-splits").move_cursor_up, { desc = "Move to up window" })
-- resize window
map("n", "<M-Left>", require("smart-splits").resize_left, { desc = "smart resize left" })
map("n", "<M-Down>", require("smart-splits").resize_down, { desc = "smart resize down" })
map("n", "<M-Up>", require("smart-splits").resize_up, { desc = "smart resize up" })
map("n", "<M-Right>", require("smart-splits").resize_right, { desc = "smart resize right" })
