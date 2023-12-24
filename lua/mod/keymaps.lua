local opts = {noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate thorugh tabs --
keymap("n", "<A-h>", ":tabp<CR>", opts)
keymap("n", "<A-l>", ":tabn<CR>", opts)

-- Navigate through window --
keymap("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
keymap("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)
keymap("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
keymap("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)

-- NvimTree --
keymap("n", "<Leader>tt", ":NvimTreeToggle<CR>", opts)

-- Telescope --
keymap("n", "<Leader>ts", ":Telescope current_buffer_fuzzy_find<CR>", opts)
keymap("n", "<Leader>tf", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>td", ":Telescope diagnostics<CR>", opts)

-- LazyGit
keymap("n", "<Leader>lg", ":LazyGit<CR>", opts)

-- Snippy
local mappings = require('snippy.mapping')
vim.keymap.set('i', '<Tab>', mappings.expand_or_advance('<Tab>'))
vim.keymap.set('s', '<Tab>', mappings.next('<Tab>'))
vim.keymap.set({ 'i', 's' }, '<S-Tab>', mappings.previous('<S-Tab>'))
vim.keymap.set('x', '<Tab>', mappings.cut_text, { remap = true })
vim.keymap.set('n', 'g<Tab>', mappings.cut_text, { remap = true })
