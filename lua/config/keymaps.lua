-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateRight<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateDown<cr>")

vim.keymap.set("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>")

vim.keymap.set("n", "<C-v>", "<C-v>", { silent = true })
vim.keymap.set("v", "<C-v>", "<C-v>", { silent = true })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<leader>z", "<CMD>ZenMode<CR><CMD>echo 'zen mode'<CR>", { desc = "Zen Mode" })
