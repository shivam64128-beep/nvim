return {
    {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
	    preset = "helix",

	    delay = 0,

	    win = {
		border = "rounded",
		padding = { 1, 2 },
	    },

	    layout = {
		width = { min = 20 },
		spacing = 3,
	    },

	    icons = {
		mappings = false,
	    },

	    show_help = false,
	    show_keys = true,
	}
    },
}
