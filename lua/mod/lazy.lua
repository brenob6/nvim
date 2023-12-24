local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- LSP
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	'jose-elias-alvarez/null-ls.nvim',
	'MunifTanjim/prettier.nvim',
	"hrsh7th/cmp-nvim-lsp",
	'hrsh7th/nvim-cmp',
	'dcampos/nvim-snippy',

	{
		'nvim-treesitter/nvim-treesitter',
		dependecies = 'windwp/nvim-ts-autotag',
	},

	-- TREE
	{
		'nvim-tree/nvim-tree.lua',
		tag = 'nightly',
		dependencies = 'nvim-tree/nvim-web-devicons',
	},

	-- TMUX
	"christoomey/vim-tmux-navigator",
	-- TELESCOPE
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = {'nvim-lua/plenary.nvim'},
	},
	-- TOOLS
	'windwp/nvim-autopairs',
	'kylechui/nvim-surround',

	-- GIT
	{ 
		'kdheepak/lazygit.nvim',
		dependencies = 'nvim-lua/plenary.nvim',
	},

	-- COLORSCHEME
	'shatur/neovim-ayu',
	
})
