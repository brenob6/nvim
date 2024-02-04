local actions = require("telescope.actions")
local actions_generate = require("telescope.actions.generate")

require('telescope').setup{
	defaults = {
		preview = false,
		mappings = {
			i = {
				["<esc>"] = actions.close,
			},
		}
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
	},
}
