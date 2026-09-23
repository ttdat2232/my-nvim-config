return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true, -- Tắt nền để hiển thị độ trong suốt từ Kitty

			custom_highlights = function(colors)
				return {
					LineNr = { fg = colors.rosewater },
				}
			end,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
