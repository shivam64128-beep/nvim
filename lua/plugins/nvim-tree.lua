return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      vim.g.nvim_tree_respect_buf_cwd = 1

      require("nvim-tree").setup({
        view = {
          width = 30,
          side = "left",
        },

        renderer = {
          icons = {
            show = {
              file = false,
              folder = false,
              folder_arrow = true,
              git = true,
            },
          },
        },

	actions = {
	    open_file = {
		quit_on_open = true,
	    },
	},

        sync_root_with_cwd = true,
        respect_buf_cwd = true,

        update_focused_file = {
          enable = true,
          update_root = true,
        },

        on_attach = function(bufnr)
          local api = require("nvim-tree.api")

          -- Keep default mappings
          api.config.mappings.default_on_attach(bufnr)

          -- Helix-style navigation
          vim.keymap.set("n", "l", api.node.open.edit, {
            buffer = bufnr,
            desc = "Open",
          })

          vim.keymap.set("n", "h", api.node.navigate.parent_close, {
            buffer = bufnr,
            desc = "Close Directory",
          })
        end,
      })

      vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
        desc = "NvimTree",
      })
    end,
  },
}
