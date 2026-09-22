return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip", -- Kết nối LuaSnip với nvim-cmp
			"rafamadriz/friendly-snippets", -- Bộ snippet sẵn có cho nhiều ngôn ngữ
		},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- Nguồn gợi ý code từ LSP Server
		},
		config = function()
			local cmp = require("cmp")

			-- Load các snippet chuẩn dạng VSCode từ friendly-snippets
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- Bắt buộc: Khai báo engine xử lý snippet (đã chọn LuaSnip)
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},

				-- Bo góc viền cửa sổ gợi ý và cửa sổ xem tài liệu (nhìn đẹp và gọn hơn)
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},

				-- Cấu hình phím tắt cho popup completion
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Cuộn lên trong cửa sổ tài liệu
					["<C-f>"] = cmp.mapping.scroll_docs(4), -- Cuộn xuống trong cửa sổ tài liệu
					["<C-Space>"] = cmp.mapping.complete(), -- Bật menu gợi ý thủ công
					["<C-e>"] = cmp.mapping.abort(), -- Đóng menu gợi ý
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Enter để chọn item đang highlight
				}),

				-- Thứ tự ưu tiên nguồn lấy dữ liệu gợi ý (từ trên xuống dưới)
				sources = cmp.config.sources({
					{ name = "nvim_lsp" }, -- 1. Từ LSP (phương thức, biến, hàm...)
					{ name = "luasnip" }, -- 2. Từ các mẫu snippet
				}),
			})
		end,
	},
}
