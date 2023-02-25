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
	dependencies = {'nvim-treesitter/nvim-treesitter-textobjects'},
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
	{ "folke/which-key.nvim",
	config = function()
		require("config.plugins.whichkey")
	end
	},
--	'linty-org/key-menu.nvim',

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
	"ibhagwan/fzf-lua",
	{'nvim-telescope/telescope.nvim', tag = '0.1.1',
	dependencies = { 'nvim-lua/plenary.nvim' }},
	
	-- ui
	{"stevearc/dressing.nvim",event="BufEnter",
	config = function()
		require("dressing").setup {select = {backend = { "telescope", "fzf", "builtin" },}}
	end},

	-- buffer line
	-- TODO: 有一些需要配置
	{"akinsho/nvim-bufferline.lua",event="BufReadPre",
	config = function()
		require("config.plugins.bufferline").setup()
	end},

	-- motion
	{'andymass/vim-matchup', 
	config = function()
		vim.g.matchup_matchparen_offscreen = { method = "popup" }
	end},
	-- word motion plus
	--"chaoren/vim-wordmotion",
	-- object motion
	"wellle/targets.vim",
	-- easy motion
	{ "phaazon/hop.nvim",  cmd = {"HopPattern","HopChar2","HopChar1"},
	config = function()
		require("hop").setup {}
	end},
--	{"ggandor/lightspeed.nvim",config = function() require("lightspeed").setup{} end},
})
