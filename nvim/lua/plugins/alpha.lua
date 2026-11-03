return {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
	local alpha = require('alpha')
	local dashboard = require('alpha.themes.dashboard')

	-- Customize the ASCII header art
	dashboard.section.header.val = {
	    [[                                                         ]],
	    [[ ███╗   ██╗ ███████╗  ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ]],
	    [[ ████╗  ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ]],
	    [[ ██╔██╗ ██║ █████╗   ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ]],
	    [[ ██║╚██╗██║ ██╔══╝   ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ]],
	    [[ ██║ ╚████║ ███████╗ ╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ]],
	    [[ ╚═╝  ╚═══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ]],
	    [[                                                         ]],
	}

	-- Customize menu buttons
	dashboard.section.buttons.val = {
	    dashboard.button('f', '   Find file', ':Telescope find_files<CR>'),
	    dashboard.button('n', '   New file', ':ene <BAR> startinsert <CR>'),
	    dashboard.button('r', '   Recent files', ':Telescope oldfiles<CR>'),
	    dashboard.button('g', '   Grep files', ':Telescope live_grep<CR>'),
	    dashboard.button("e", "   Browse cwd", ":NvimTreeOpen<CR>"),
	    dashboard.button("l", "   Lazy", ":Lazy<CR>"),
	    dashboard.button('q', '   Exit neovim', ':qa<CR>'),
	}

	alpha.setup(dashboard.config)
    end,
}

