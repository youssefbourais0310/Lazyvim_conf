-- -- Keymaps are automatically loaded on the VeryLazy event
-- -- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- -- Add any additional keymaps here
-- -- Map Shift + Option + K to move the current line up in insert mode
--
-- -- -- Function to move the current line up or down in normal mode
-- -- function MoveLine(direction)
-- --     vim.cmd('silent! execute "normal! [v]d"')
-- --     vim.cmd('silent! execute "normal! ' .. direction .. 'p"')
-- -- end
-- --
-- -- -- Map Option + Shift + J to move the current line down in normal mode
-- -- vim.api.nvim_set_keymap('n', '<Tab>j', ':lua MoveLine("j")<CR>', { noremap = true, silent = true })
-- --
-- -- -- Map Option + Shift + K to move the current line up in normal mode
-- -- vim.api.nvim_set_keymap('n', '<Tab>k', ':lua MoveLine("k")<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ch", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.api.nvim_set_keymap('i', '<Tab>', '<Space><Space><Space><Space>', { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })
vim.keymap.set("n", "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>", { silent = true })
-- vim.keymap.set("n", "<C-Space>", "<Cmd>NvimTmuxNavigateNavigateNext<CR>", { silent = true })
-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split window equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to the next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
vim.keymap.set("n", "<leader>h", "<Cmd>Stdheader<CR>") -- set 42 header
vim.keymap.set("n", "<leader>sv", "<C-w>v") --split window vertically
