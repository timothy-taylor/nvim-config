require("tgt.lazy")
require("tgt.setup")
require("tgt.color")
require("tgt.remap")
require("tgt.completion")
require("tgt.lsp")
require("tgt.treesitter")
require("tgt.autopairs")
require("tgt.comment")
require("tgt.alpha")
require("tgt.blame")
require("tgt.helpers")
require("tgt.oil")

vim.api.nvim_create_autocmd('BufWritePre', {
	buffer = vim.fn.bufnr(),
	callback = function()
		vim.lsp.buf.format({ timeout_ms = 3000 })
	end,
})
