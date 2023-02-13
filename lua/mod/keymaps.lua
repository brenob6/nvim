local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate thorugh tabs --
keymap("n", "<A-h>", ":tabp<CR>", opts)
keymap("n", "<A-l>", ":tabn<CR>", opts)

-- Navigate through window --
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)

-- NvimTree --
keymap("n", "<Leader>t", ":NvimTreeToggle<CR>", opts)

-- Telescope --
keymap("n", "<Leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>b", ":Telescope builtin<CR>", opts)
keymap("n", "<Leader>s", ":Telescope current_buffer_fuzzy_find<CR>", opts)

