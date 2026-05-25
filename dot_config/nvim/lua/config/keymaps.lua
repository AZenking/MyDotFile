-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode then
  -- VSCode extension
else
  -- ~/.config/nvim/lua/config/keymaps.lua
  local map = vim.keymap.set

  -- jj 退出插入模式
  map("i", "jj", "<Esc>")

  map("i", "jk", "<Esc>:w<CR>")
  local Terminal = require("toggleterm.terminal").Terminal
  local float_term = Terminal:new({ direction = "float" })

  local toggle_term = function()
    float_term:toggle()
  end

  -- normal 模式
  vim.keymap.set("n", "<C-->", toggle_term, { desc = "Toggle Terminal" })

  -- terminal 模式
  vim.keymap.set("t", "<C-->", function()
    -- 先退出 terminal 模式
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "n", true)
    -- 再 toggle
    toggle_term()
  end, { desc = "Toggle Terminal" })
end
