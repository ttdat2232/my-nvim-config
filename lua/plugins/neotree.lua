vim.keymap.set("n", "<C-E>", ":Neotree filesystem reveal left<CR>")
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
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                }
            },
            event_handlers = {
                {

                    event = "file_open_requested",
                    handler = function()
                        -- auto close
                        -- vim.cmd("Neotree close")
                        -- OR
                        require("neo-tree.command").execute({ action = "close" })
                    end
                }
            }
        })
    end
}
