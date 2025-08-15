vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "Nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dp')

-- split
vim.keymap.set("n", "<C-BSlash>", ":vsplit<CR>")

-- move between windows
vim.keymap.set("n", "<S-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<S-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<S-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<S-l>", ":wincmd l<CR>")

-- undo
vim.keymap.set("n", "<C-z>", ":u<CR>")

-- save
vim.keymap.set("n", "<C-s>", ":w<CR>")
