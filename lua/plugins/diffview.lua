return {
	"sindrets/diffview.nvim",
	cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
	keys = {
		{ "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Git Diff View" },
		{ "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "Close Git Diff View" },
	},
	opts = {},
}
