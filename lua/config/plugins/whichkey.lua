  local whichkey = require "which-key"

  local conf = {
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
  }

  local opts = {
    mode = "n", -- Normal mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }

  local mappings = {
    ["w"] = { "<cmd>update!<CR>", "Save" },
    ["q"] = { "<cmd>q!<CR>", "Quit" },
    ["p"] = { '"+p',"past"},
    ["y"] = { '"+y',"yank"},
    b = {
      name = "Buffer",
      c = { "<Cmd>bd!<Cr>", "Close current buffer" },
      D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
    },

    ["r"] = { "gg:%s/\\r//g<enter>", "rm \\r"},
    
    t = {
    	name = "tree",
	t = {":NvimTreeToggle<enter>", "toogle the tree"},
	f = {
	    name = "fold",
	    f = {":NvimTreeCollapse<enter>", "fold all"},
	    o = {":NvimTreeCollapseKeepBuffers<enter>","fold only"}
	},
	o = {":NvimTreeOpen<cr>", "open the tree"},
	c = {"<cmd>NvimTreeClose<cr>", "close the tree"},
    },

    f = {
	name = "find",
	f = {"<cmd>FzfLua files<cr>", "find files"},
	b = {"<cmd>FzfLua buffers<cr>", "find buffers"},
	l = {"<cmd>FzfLua blines<cr>", "find lines"},
	h = {"<cmd>Telescope help_tags", "find tages"},
    },

    g = {
	name = "grep",
	p = {"<cmd>FzfLua live_grep<cr>", "grep project"},
	b = {"<cmd>FzfLua grep_curbuf<cr>", "grep current buffer"},
    },
    b = {
	name = "buffer line",
	c = {
	    name = "cloae",
	    [ '<left>' ] = { "<cmd>BufferLineCloseLeft<cr>", "close left buffers"  }, 
	    [ '<right>' ] = { "<cmd>BufferLineCloseRight<cr>", "close right buuffers"},
	},
	p = {"<cmd>BufferLinePick<cr>","pick buffer"},

    }



  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
