local fn = vim.fn
local packer = require('packer')

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

-- Autocommand that reloads neovim whenever this archive is saved
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)

	use { "shatur/neovim-ayu" }

	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}	

	use {
	  'nvim-lualine/lualine.nvim',
--	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {"nvim-lua/popup.nvim"}

	use {
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		tag = "nightly"
	}

	use {
		"nvim-treesitter/nvim-treesitter",
		run = ':TSUpdate'
	}
end)
