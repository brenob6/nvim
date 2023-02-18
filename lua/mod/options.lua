vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
--vim.opt.pumheight = 10
vim.opt.mouse = "n"

vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.laststatus = 0 -- Hidden the status line
vim.opt.showtabline = 2 -- Show tabline even just one file is open

vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.ignorecase = true

-- splits
vim.opt.splitright = true

vim.opt.showmode = true
vim.opt.cursorline = true
vim.opt.termguicolors = true

vim.o.background = "dark"

--vim.cmd "noswapfile"
vim.cmd "colorscheme ayu"
