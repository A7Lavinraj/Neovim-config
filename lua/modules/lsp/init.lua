local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("modules.lsp.mason")
require("modules.lsp.lspconfig").setup()
require("modules.lsp.null-ls")
