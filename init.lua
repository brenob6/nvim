-- Colorscheme
require('mod.plugins')
require('mod.telescope')
--require('mod.lualine')
require('mod.treesitter')
require('mod.nvim-tree')
require('mod.keymaps')
require('mod.toggleterm')
require('mod.options')

require('mod.lsp')
require('mod.null-ls')
require('mod.prettier')

-- Auto Complete
require('mod.cmpconfig')
require('mod.nvim-snippy')

require('nvim-surround').setup()
require('nvim-autopairs').setup()
require('luatab').setup()
require('nvim-highlight-colors').setup{}
require('transparent').setup{}

vim.cmd [[
	autocmd FileType java,c setlocal shiftwidth=4 tabstop=4
]]	
