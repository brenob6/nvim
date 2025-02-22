return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"s1n7ax/nvim-window-picker",
	},
	opts = {
		filesystem = {
      filtered_items = {
        hide_dotfiles = false,
      },
			window = {
				mappings = {
					["<Tab>"] = "open",
				},
			},
		},
	},
	keys = {
		{ "<leader>tt", "<cmd>Neotree toggle position=right<cr>", desc = "Neotree" },
	},
}
