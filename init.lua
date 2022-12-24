-- Colorscheme
require('mod.ayu')
require('mod.telescope')
require('mod.lualine')
require('mod.plugins')
require('mod.treesitter')
require('mod.nvim-tree')
require('mod.keymaps')
require('mod.toggleterm')
require('mod.bufferline')
require('mod.options')

require('mod.lsp')

-- Auto Complete
require('mod.cmpconfig')
require('mod.nvim-snippy')

require('nvim-surround').setup()
require('nvim-autopairs').setup()
