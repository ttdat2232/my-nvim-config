return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "nightfly", -- Hoặc dùng "auto" để tự khớp với colorscheme
			},
		})
	end,
}
