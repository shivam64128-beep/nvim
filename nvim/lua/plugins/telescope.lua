return {
    "nvim-telescope/telescope.nvim", version = "*",
    dependencies = { "nvim-lua/plenary.nvim", },
    config = function()
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files", })
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep", })
	vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags", })
	vim.keymap.set("n", "<leader>fl", builtin.buffers, { desc = "Buffers", })


	vim.keymap.set("n", "<leader>fk", function()
	    require("telescope.builtin").find_files({
		cwd = vim.fn.expand("~/.config"),
		prompt_title = "Config Files",
		hidden = true,
	    })
	end, {
	desc = "Find konfig files",
	})


	-- hidden files
	vim.keymap.set("n", "<leader>fd", function()
	    builtin.find_files({ hidden = true, no_ignore = true, })
	end, { desc = "Find hidden files", })


	-- -- hidden files grep --
	-- vim.keymap.set("n", "<leader>fj", function()
	--     builtin.live_grep({
	-- 	additional_args = function()
	-- 	    return { "--hidden", "--no-ignore", }
	-- 	end,
	--     })
	-- end, { desc = "Live grep hidden files", })


	require("telescope").setup({
	    defaults = require("telescope.themes").get_ivy({
		mappings = {
		    i = {
			["<C-q>"] = require("telescope.actions").close,
		    },
		    n = {
			["q"] = require("telescope.actions").close,
		    },
		},
	    }),
	})

	vim.keymap.set("n", "<leader>ft", function()
	    local buf = vim.api.nvim_create_buf(false, true)

	    local width = math.floor(vim.o.columns * 0.8)
	    local height = math.floor(vim.o.lines * 0.8)

	    local opts = {
		relative = "editor",
		width = width,
		height = height,
		row = (vim.o.lines - height) / 2,
		col = (vim.o.columns - width) / 2,
		style = "minimal",
		border = "rounded",
	    }

	    vim.api.nvim_open_win(buf, true, opts)
	    vim.cmd("terminal")
	    vim.cmd("startinsert")
	end, { desc = "Floating Terminal" })


	vim.keymap.set("n", "<leader>r", builtin.oldfiles, {
	    desc = "Recent files",
	})

    end
}
