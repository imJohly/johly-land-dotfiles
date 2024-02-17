local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Toggle Terminal
map('n', '<leader>tt', ':ToggleTerm<CR>', opts)

