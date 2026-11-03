vim.g.mapleader = " "
vim.keymap.set("n", "<leader>E", vim.cmd.Ex, { desc = 'Explorer' })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = 'NvimTree' })
vim.keymap.set("n", "<leader>qq", vim.cmd.q, { desc = 'quit nvim' })
vim.keymap.set("n", "<leader>qf", ":q!<CR>", { desc = 'force quit' })
vim.keymap.set("n", "<leader>qw", vim.cmd.wq, { desc = 'write quit' })
vim.keymap.set("n", "C-d", "<C-d>zz")
vim.keymap.set("n", "C-u", "<C-u>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Alt Up/Down in vscode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_set_keymap("i", "jk", "<esc>", { noremap = false })

-- make file executable
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Cycle to the next/previous buffer
vim.keymap.set('n', '<S-h>', '<Cmd>bp<CR>', { desc = 'Cycle to previous buffer' })
vim.keymap.set('n', '<S-l>', '<Cmd>bn<CR>', { desc = 'Cycle to next buffer' })

-- Close the current buffer
vim.keymap.set('n', '<Leader>qb', '<Cmd>bdelete<CR>', { desc = 'Close buffer' })

-- -- terminal --
vim.keymap.set('n', '<Leader>t', function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.cmd("startinsert")
    vim.api.nvim_win_set_height(0, 10)
end, { desc = 'terminal' })
