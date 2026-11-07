return {
    {
        "nvim-telescope/telescope.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            local telescope = require("telescope")
            local builtin = require("telescope.builtin")
            local actions = require("telescope.actions")

            -- Telescope setup
            telescope.setup({
		defaults = {
		    preview = {
			hide_on_startup = true,
		    },
		    layout_strategy = "horizontal",

                    layout_config = {
                        horizontal = {
                            width = 0.50,
                            height = 0.90,
                            prompt_position = "bottom",
                        },
                    },

                    sorting_strategy = "ascending",
                    path_display = { "truncate" },

                    border = true,
                    winblend = 5,

                    mappings = {
                        i = {
                            ["<C-q>"] = actions.close,
                            ["<C-j>"] = actions.move_selection_next,
                            ["<C-k>"] = actions.move_selection_previous,
                        },
                        n = {
                            ["q"] = actions.close,
                            ["j"] = actions.move_selection_next,
                            ["k"] = actions.move_selection_previous,
                        },
                    },
                },
            })

            -- Find files
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {
                desc = "Find files",
            })

            -- Live grep
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
                desc = "Live grep",
            })

            -- Help tags
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
                desc = "Help tags",
            })

            -- Buffers
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {
                desc = "Buffers",
            })

            -- Config files
            vim.keymap.set("n", "<leader>fc", function()
                builtin.find_files({
                    cwd = vim.fn.expand("~/.config"),
                    prompt_title = "Config Files",
                    hidden = true,
                })
            end, {
                desc = "Find config files",
            })

            -- Recent files
            vim.keymap.set("n", "<leader>r", builtin.oldfiles, {
                desc = "Recent files",
            })

            -- Man pages
            vim.keymap.set("n", "<leader>fm", function()
                builtin.man_pages({
                    sections = { "ALL" },
                })
            end, {
                desc = "Search man pages",
            })
        end,
    },
}
