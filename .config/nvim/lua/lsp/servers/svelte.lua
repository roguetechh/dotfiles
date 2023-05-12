local M = {}
M.setup = function(on_attach, capabilities)
	local lspconfig = require("lspconfig")

	lspconfig.svelte.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = { "svelteserver", "--stdio", "--resolveJsonModule" },
	})
end

return M
