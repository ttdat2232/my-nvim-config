return {
	"3rd/image.nvim",
	event = "VeryLazy",
	opts = {
		backend = "kitty", -- Chỉ định backend Kitty
		integrations = {
			markdown = {
				enabled = true,
				clear_in_insert_mode = false,
				download_remote_images = true, -- Tự động tải và hiển thị ảnh từ link URL http/https
				only_render_image_at_cursor = false,
			},
			neorg = {
				enabled = true,
			},
			html = {
				enabled = false,
			},
			css = {
				enabled = false,
			},
		},
		max_width = 100,
		max_height = 12,
		max_width_window_percentage = math.huge,
		max_height_window_percentage = math.huge,
		window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
	},
}
