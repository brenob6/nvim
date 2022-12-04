local configs = require "nvim-treesitter.configs"
local hi = require "nvim-treesitter.highlight"

-- vim.treesitter.highlighter.hl_map.error = nil

configs.setup {
	ensure_installed = {
		"c",
		"python"
	},
	sync_install = false,
	ignore_install = {""},
	highlight = {
		enable = true,
		disable = {""},
		additional_vim_regex_highlight = true,
	},
	indent = {enable = true},	
}
