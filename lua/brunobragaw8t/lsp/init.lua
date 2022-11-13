local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("brunobragaw8t.lsp.lsp-installer")
require("brunobragaw8t.lsp.handlers").setup()
