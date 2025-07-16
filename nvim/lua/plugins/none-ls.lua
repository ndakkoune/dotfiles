return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Don't forget to add the builtins and also install 'stylua', 'ruff'... via Mason 
                -- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
				null_ls.builtins.formatting.stylua,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
