-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- For conciseness
local opts = { noremap = true, silent = true }

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- toogle comments
-- vim.keymap.set('n', '<C-_>', 'gcc', { noremap = true, silent = true, desc = 'toggle single line comment' })

-- Buffers
-- vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
-- vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
-- vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts) -- close buffer
-- vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- Normal Mode indent/unindent the selected lines
vim.keymap.set('n', '<Tab>', '>>', { desc = 'Indent current line' })
vim.keymap.set('n', '<S-Tab>', '<<', { desc = 'Unindent current line' })
-- Visual mode: indent/unindent the selected lines
vim.keymap.set('v', '<Tab>', '>gv', { desc = 'Indent selection' })
vim.keymap.set('v', '<S-Tab>', '<gv', { desc = 'Unindent selection' })
