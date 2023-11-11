local servers = {
	"jdtls",
	"pyright",
	"clangd",
	"tsserver",
	"gopls"
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("mod.lsp.handlers").on_attach,
		capabilities = require("mod.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	if serve == "pyright" then
		local pyright_opts = require "mod.lsp.settings.pyright"
		opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	end

	if server == "jdtls" then
		goto continue
	end

	lspconfig[server].setup(opts)
	::continue::
end
