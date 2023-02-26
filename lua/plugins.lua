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

	-- TODO:af work but if dont work
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
	dependencies={"nvim-treesitter"}, 
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
	
	-- completion
	-- TODO:config
	{"ms-jpq/coq_nvim",branch="coq", event="InsertEnter", lazy = true,build=":COQdeps",
	dependencies = {{ "ms-jpq/coq.artifacts", branch = "artifacts" },{ "ms-jpq/coq.thirdparty", branch = "3p"}},
	config = function()
		require("config.plugins.coq").setup()
	end,enable=true},
	
	-- TODO:config
	{"hrsh7th/nvim-cmp",event="InsertEnter",lazy=true,
	config=function() require("config.plugins.cmp") end,
	dependencies={"hrsh7th/cmp-buffer","hrsh7th/cmp-path", "hrsh7th/cmp-nvim-lua",  
		"ray-x/cmp-treesitter",  "hrsh7th/cmp-cmdline", "saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-calc", "f3fora/cmp-spell",  "hrsh7th/cmp-emoji","hrsh7th/cmp-nvim-lsp",
		{"L3MON4D3/LuaSnip", dependencies= "rafamadriz/friendly-snippets",
		config = function() require("config.plugins.luasnip").setup() end,},
		"rafamadriz/friendly-snippets",
		enable = true,},enable=true,
	},

	-- pairs
	{"windwp/nvim-autopairs",
	dependencies={"nvim-treesitter"},
	config=function() require("config.plugins.autopair").setup() end},
	{"RRethy/nvim-treesitter-endwise",event="InsertEnter"},


	-- TODO:add coq.nvim
	-- TODO:lsp and treesitter should config + lua lsp + vim
	{"neovim/nvim-lspconfig",lazy=true,dependencies={"ray-x/lsp_signature.nvim"},
	config = function()
	  	require("config.plugins.lsp")
	end,},
	{"williamboman/mason.nvim",
	config = function()
		require("config.plugins.mason").setup()
	end},
	{ "williamboman/mason-lspconfig.nvim",
	config = function()
		require("config.plugins.mason_lsp")
	end},

})



