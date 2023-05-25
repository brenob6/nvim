local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

nvim_tree.setup({
	open_on_tab = false,
	respect_buf_cwd = true,
	tab = {
		sync = {
			open = true,
			close = true
		},
	},
	view = {
		hide_root_folder = true,
		side = "right",
		float = {
			enable = false
		}
	},
	actions = {
		open_file = {
			quit_on_open = false,
			window_picker = {
				enable = false
			},
		},
	},
	renderer = {
		group_empty = true
	},
	diagnostics = {
		enable = true,
		show_on_dirs = false
	},
	filters = {
		custom = {"__pycache__", ".vscode"}
	}
})
