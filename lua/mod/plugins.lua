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
	-- LSP --
	use "neovim/nvim-lspconfig"
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"

	use "jose-elias-alvarez/null-ls.nvim"
	use "MunifTanjim/prettier.nvim"

	-- JAVA --
	use "mfussenegger/nvim-jdtls"

	-- CMP --
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"

	use "windwp/nvim-autopairs"
	use "kylechui/nvim-surround" 

	-- Snippets -- 
	use { "dcampos/nvim-snippy" }	

	-- Colerschemes -- 
	use { "shatur/neovim-ayu" }

	use "lukas-reineke/indent-blankline.nvim"
	-- Telescope --
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}	
	use{ "nvim-telescope/telescope-media-files.nvim" }

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
	use "alvarosevilla95/luatab.nvim"
	
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ':TSUpdate',
		requires = {
			"windwp/nvim-ts-autotag"
		}
	}

	use "akinsho/toggleterm.nvim"

	use "wbthomason/packer.nvim"
end)
