return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.csharpier,
				null_ls.builtins.formatting.prettier,
			},
			on_attach = function(client, bufnr)
				-- Auto format when saving (BufWritePre)
				if client:supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- skip formatting if there is any LSP server error
							local errors = vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.ERROR })
							if #errors == 0 then
								vim.lsp.buf.format({ bufnr = bufnr, async = false })
							end
						end,
					})
				end

				-- turn on Format-on-Type if LSP Server supports
				if client:supports_method("textDocument/onTypeFormatting") then
					vim.api.nvim_create_autocmd("InsertLeave", {
						buffer = bufnr,
						callback = function()
							local errors = vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.ERROR })
							if #errors == 0 then
								vim.lsp.buf.format({ bufnr = bufnr, async = true })
							end
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({ async = true })
		end, { desc = "Format document" })
	end,
}
