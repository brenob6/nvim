local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

nvim_tree.setup({
	view = {
		hide_root_folder = true
	},
	actions = {
		open_file = {
			quit_on_open = true
		},
	},
})
