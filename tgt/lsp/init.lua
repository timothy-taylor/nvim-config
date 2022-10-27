local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("tgt.lsp.mason")
require("tgt.lsp.handlers").setup()
require("tgt.lsp.null-ls")
