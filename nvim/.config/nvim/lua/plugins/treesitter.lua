return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true, -- Make treesittter automatically installs a parser when a file with an 'unknown' extension is opened
			-- ensure_installed = { "c", "lua", "vim", "vimdoc", "html", "python", "cpp", "yaml" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
