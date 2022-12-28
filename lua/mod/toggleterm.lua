require("toggleterm").setup{

	size =  function(term)
		if term.direction == "horizontal" then
			return 10
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,

	open_mapping = [[<c-\>]],
	direction = 'float',
	auto_scroll = true,
	float_opts = {
		border = 'single',
		highlight = {
			border = 'Normal'
		},
	},
}

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')	

