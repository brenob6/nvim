telescope = require('telescope')

telescope.load_extension('media_files')

telescope.setup{
	defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
		layout_config = {
			center = {
				width = 0.9
			},
			horizontal = {
				height = 0.9,
				preview_cutoff = 80,
				width = 0.8,
				prompt_position = "bottom"
			},
		},
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
		current_buffer_fuzzy_find = {
			theme = "dropdown",
		},
  },
  extensions = {
	media_files = {
		filetypes = {"png", "webp", "jpg", "pdf"},
		find_cmd = "find"
	},
  },
}
