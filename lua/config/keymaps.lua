-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Format keymap
vim.keymap.set('n', '<leader>ff', function()
  vim.lsp.buf.format { async = true }
end, { desc = '[F]ormat [F]ile - current buffer' })
