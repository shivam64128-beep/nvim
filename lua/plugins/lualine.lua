return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            options = {
                theme = "tokyonight",
                globalstatus = true,
                section_separators = "",
                component_separators = "│",
                disabled_filetypes = {
                    statusline = { "dashboard", "alpha" },
                },
            },
            sections = {
                lualine_a = {
                    {
                        "mode",
                        fmt = function(str)
                            return str:upper()
                        end,
                    },
                },
                lualine_b = { "branch" },
                lualine_c = { "filename" },
                lualine_x = {
                    {
                        function()
                            local reg = vim.fn.reg_recording()
                            if reg ~= "" then
                                return "󰑋 REC @" .. reg
                            end
                            return ""
                        end,
                        color = { fg = "#f7768e", gui = "bold" },
                    },
                    "diagnostics",
                    "filetype",
                },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
        },
    },
}
