local configs = require "nvim-treesitter.configs"
local hi = require "nvim-treesitter.highlight"

configs.setup {
	ensure_installed = {
		"c",
		"python",
		"html",
		"javascript",
		"lua",
		"vim",
		"markdown",
		"typescript"
	},
	sync_install = false,
	ignore_install = {""},
	highlight = {
		enable = true,
		disable = {""},
		additional_vim_regex_highlight = true,
	},
	indent = {
		enable = true,
		disable = {'python'}
	},	
	autotag = {
		enable = true,
		filetypes = {
			'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'vue', 'tsx', 'jsx',
			'xml',
			'markdown',
		},
		skip_tags = {
			'br', 'hr', 'img', 'input', 'link', 'meta'
		}
	},
}
