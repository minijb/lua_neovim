-- lazy.nvim 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	'nvim-tree/nvim-web-devicons',
	
	-- dashboaed
	{"goolord/alpha-nvim",
		config = function()
			require'alpha'.setup(require'alpha.themes.startify'.config)
		end
	},

	-- theme
	{ "catppuccin/nvim", name = "catppuccin" ,
		config = function()
			vim.cmd "colorscheme catppuccin-frappe"
		end
	},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
	config = function()
		require("config.plugins.treesitter")
	end
	},
	{'nvim-tree/nvim-tree.lua',tag = 'nightly'},
	{ 'echasnovski/mini.nvim', version = '*' ,
		config = function()
			require('mini.surround').setup()
		end
	},
	'kdheepak/lazygit.nvim',
--	"folke/which-key.nvim",
	'linty-org/key-menu.nvim',

	-- status line
	{"nvim-lualine/lualine.nvim",event = 'VimEnter',
		config = function()
			require('lualine').setup()
			require('config.plugins.lualine')
		end
	},
	{ "SmiteshP/nvim-gps", 
	config = function()
		require("nvim-gps").setup()
	end
	},





})
