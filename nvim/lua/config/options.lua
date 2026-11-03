vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 4
vim.opt.timeout = false
vim.opt.smarttab = true
vim.opt.cindent = true
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.cmdheight = 0
vim.opt.fillchars = { eob = " "}

-- vim.opt.clipboard = "unnamedplus" --system clipboard integration
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
