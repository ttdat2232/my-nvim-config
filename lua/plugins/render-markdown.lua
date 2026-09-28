return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	ft = { "markdown", "norg", "rmd", "org" },
	keys = {
		{
			"<leader>um",
			"<cmd>RenderMarkdown toggle<cr>",
			desc = "Toggle Render Markdown",
			ft = { "markdown", "norg", "rmd", "org" },
		},
	},

	opts = {
		heading = {
			enabled = true,
			sign = true,
			icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
		},
		code = {
			enabled = true,
			sign = false,
			style = "full",
		},
		bullet = {
			enabled = true,
			icons = { "●", "○", "◆", "◇" },
		},
		checkbox = {
			enabled = true,
			unchecked = { icon = "󰄱 " },
			checked = { icon = "󰱒 " },
		},
	},
}
