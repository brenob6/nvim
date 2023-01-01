local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

nvim_tree.setup({
	open_on_tab = false,
	view = {
		hide_root_folder = true,
		side = "right",
		float = {
			enable = true
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
		show_on_dirs = true
	},
})
