-- HACK: this is extracted from https://github.com/LazyVim/LazyVim/blame/bcff5a19379e32a85049500de420aa24b271fb72/lua/lazyvim/plugins/extras/vscode.lua
-- simply because the https://github.com/LazyVim/LazyVim/commit/ae054ec13c987ff5ce39cfc88917f8243abae72e
-- version of { import = "lazyvim.plugins.extras.vscode" } doesn't work
-- it freezes vscode inserts and nvim CPU goes through the roof but I'm
-- not quite sure why, I only proceeded by processus of elimitation.
-- I've also added some hacks to not have lazyvim keys hijack vscode etc.

if not vim.g.vscode then
  return {}
end

local enabled = {
  "flit.nvim",
  "lazy.nvim",
  "leap.nvim",
  "mini.ai",
  "mini.comment",
  "mini.pairs",
  "mini.surround",
  "nvim-treesitter",
  "nvim-treesitter-textobjects",
  "nvim-ts-context-commentstring",
  "vim-repeat",
  "LazyVim",
}

local Config = require("lazy.core.config")
local Plugin = require("lazy.core.plugin")
Config.options.checker.enabled = false
Config.options.change_detection.enabled = false

-- HACK: disable all plugins except the ones we want
local fix_disabled = Plugin.Spec.fix_disabled
function Plugin.Spec.fix_disabled(self)
  for _, plugin in pairs(self.plugins) do
    if not (vim.tbl_contains(enabled, plugin.name) or plugin.vscode) then
      plugin.enabled = false
    end
  end
  fix_disabled(self)
end

-- HACK: don't clean plugins in vscode
local update_state = Plugin.update_state
function Plugin.update_state()
  update_state()
  Config.to_clean = {}
end

-- else
--   noremap(
--     "n",
--     "<leader>cr <Cmd>call VSCodeNotifyVisual('editor.action.rename', 1)<CR>",
--     { silent = true, desc = "Rename Symbol" }
--   )
-- noremap <silent> <leader>gy <Cmd>call VSCodeNotifyVisual('editor.action.goToTypeDefinition', 1)<CR>

-- Add some vscode specific keymaps
vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimKeymaps",
  callback = function()
    vim.keymap.set("n", "<leader><space>", "<cmd>Find<cr>")
    vim.keymap.set("n", "<leader>/", [[<cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>]])
    vim.keymap.set("n", "<leader>ss", [[<cmd>call VSCodeNotify('workbench.action.gotoSymbol')<cr>]])
    vim.keymap.set("n", "<leader>cr", [[<cmd>call VSCodeNotify('editor.action.rename')<cr>]], { noremap = true })
    vim.keymap.set("n", "gr", [[<cmd>call VSCodeNotify('editor.action.goToReferences')<cr>]], { noremap = true })
    vim.keymap.set("n", "gd", [[<cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<cr>]], { noremap = true })
  end,
})

-- {
--     "key": "space c r",
--     "command": "editor.action.rename",
--     "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly && neovim.mode == 'normal'"
-- },
-- {
--     "key": "g y",
--     "command": "editor.action.goToTypeDefinition",
--     "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly && neovim.mode == 'normal'"
-- },
-- {
--     "key": "g d",
--     "command": "editor.action.revealDefinition",
--     "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly && neovim.mode == 'normal'"
-- },
-- {
--     "key": "g r",
--     "command": "editor.action.goToReferences",
--     "when": "editorHasReferenceProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor && neovim.mode == 'normal'"
-- },
-- {
--     "key": "g I",
--     "command": "editor.action.goToImplementation",
--     "when": "editorHasImplementationProvider && editorTextFocus && !isInEmbeddedEditor && nevoim.mode === 'normal'"
-- },

return {
  {
    "LazyVim/LazyVim",
    config = function(_, opts)
      opts = opts or {}
      -- disable the colorscheme
      opts.colorscheme = function() end
      require("lazyvim").setup(opts)
    end,
    -- HACK: no need of keybindings for lazyvim in vscode
    keys = function()
      return {}
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { highlight = { enable = false } },
  },
}
