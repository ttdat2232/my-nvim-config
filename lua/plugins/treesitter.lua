return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		ensure_installed = {
			"lua",
			"c_sharp",
			"html",
			"javascript",
			"css",
			"scss",
			"dockerfile",
			"typescript",
			"editorconfig",
			"json",
		}
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		}
		indent = { enable = true }
	end,
}
