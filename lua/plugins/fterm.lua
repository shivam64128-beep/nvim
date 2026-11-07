return{ 
	vim.keymap.set("n", "<leader>ft", function()
	    local buf = vim.api.nvim_create_buf(false, true)

	    local width = math.floor(vim.o.columns * 0.6)
	    local height = math.floor(vim.o.lines * 0.6)

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
}
