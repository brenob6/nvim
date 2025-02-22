return {
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
		},
	},
	{
		"echasnovski/mini.pairs",
		opts = {},
		config = function(_, opts)
			require("mini.pairs").setup(opts)
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	{
		"nvimdev/indentmini.nvim",
		config = function()
			require("indentmini").setup()
		end,
	},
	{
		"folke/ts-comments.nvim",
		opts = {
			lang = {
				tsx = {
					"// %s",
					jsx_attribute = "// %s",
					jsx_element = "{ /* %s */}",
					jsx_fragment = "{/* %s */}",
				},
			},
		},
	},
}
