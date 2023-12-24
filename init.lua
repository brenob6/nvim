

require('mod.lazy')
require('mod.telescope')
require('mod.treesitter')
require('mod.nvim-tree')
require('mod.keymaps')
require('mod.options')
require('mod.lsp')
require('mod.prettier')
require('mod.null-ls')
require('mod.cmpconfig')
require('nvim-surround').setup()
require('nvim-autopairs').setup()
require('mod.ayu')




vim.cmd [[
	autocmd FileType java,c setlocal shiftwidth=4 tabstop=4
]]	
