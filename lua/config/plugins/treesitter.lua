require'nvim-treesitter.configs'.setup{
	ensure_installed = {"cpp","cmake","lua","javascript"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	},
	endwise={enable=true,},
	matchup = {
		enable = true,
	},
	textobjects = {
	  select = {
	    enable = true,

	    -- Automatically jump forward to textobj, similar to targets.vim
	    lookahead = true,

	    keymaps = {
	      -- You can use the capture groups defined in textobjects.scm
	      ["af"] = "@function.outer",
	      ["if"] = "@function.inner",
	      ["ac"] = "@class.outer",
	      ["ic"] = "@class.inner",
	    },
	  },

	  swap = {
	    enable = true,
	    swap_next = {
	      ["<leader>rx"] = "@parameter.inner",
	    },
	    swap_previous = {
	      ["<leader>rX"] = "@parameter.inner",
	    },
	  },

	  move = {
	    enable = true,
	    set_jumps = true, -- whether to set jumps in the jumplist
	    goto_next_start = {
	      ["]m"] = "@function.outer",
	      ["]]"] = "@class.outer",
	    },
	    goto_next_end = {
	      ["]M"] = "@function.outer",
	      ["]["] = "@class.outer",
	    },
	    goto_previous_start = {
	      ["[m"] = "@function.outer",
	      ["[["] = "@class.outer",
	    },
	    goto_previous_end = {
	      ["[M"] = "@function.outer",
	      ["[]"] = "@class.outer",
	    },
	  },

	  lsp_interop = {
	    enable = true,
	    border = "none",
	    peek_definition_code = {
	      ["<leader>df"] = "@function.outer",
	      ["<leader>dF"] = "@class.outer",
	    },
	  },
	},
}


