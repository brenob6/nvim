local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require('mod.lsp.mason')
require('mod.lsp.handlers').setup()
