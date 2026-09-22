return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		vim.keymap.set("n", "<C-e>", function()
			if vim.bo.filetype == "neo-tree" then
				vim.cmd("Neotree close")
			else
				vim.cmd("Neotree focus filesystem left")
			end
		end, { silent = true, desc = "Toggle or Focus Neo-tree" })

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
		})
	end,
}
