local status, lspconfig = pcall(require, "lspconfig")
if not status then
	return
end

local protocol = require("vim.lsp.protocol")

-- format on save
local on_attach = function(client, bufnr)
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("Format", { clear = true }),
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.formatting_seq_sync()
			end,
		})
	end
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.offsetEncoding = { "utf-16" }

-- Python
lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Clangd
lspconfig.clangd.setup({
	-- on_attach = on_attach,
	capabilities = capabilities,
	cmd = { "clangd", "--log=verbose" },
})

-- lua_ls
lspconfig.lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
