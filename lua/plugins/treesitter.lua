return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "cpp", "lua", "typescript", "tsx" },
				highlight = { enable = true },
				indent = { enable = false },
			})
		end,
		build = ":TSUpdate",
	},
	{
		"windwp/nvim-ts-autotag",
		config = function(_, opts)
			require("nvim-ts-autotag").setup(opts)
		end,
	},
}
