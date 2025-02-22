return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzy-native.nvim", build = "make" },
	},
	keys = {
		{ "<leader>tf", "<cmd>Telescope find_files<cr>" },
		{ "<leader>td", "<cmd>Telescope diagnostics<cr>" },
		{ "<leader>th", "<cmd>Telescope help_tags<cr>" },
	},
}
