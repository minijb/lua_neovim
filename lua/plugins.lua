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
	{"goolord/alpha-nvim",
		config = function()
			require'alpha'.setup(require'alpha.themes.startify'.config)
		end
	},
	{ "catppuccin/nvim", name = "catppuccin" ,
		config = function()
			vim.cmd "colorscheme catppuccin-frappe"
		end
	},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{'nvim-tree/nvim-tree.lua',tag = 'nightly'},
	{ 'echasnovski/mini.nvim', version = '*' ,
		config = function()
			require('mini.surround').setup()
		end
	},
	'kdheepak/lazygit.nvim',
--	"folke/which-key.nvim",
	'linty-org/key-menu.nvim',
})
