local keymap = vim.api.nvim_set_keymap
local default_opts = {noremap = true , silent = true}
local expr_opts = { noremap = true , expr = true , silent = true }


keymap("i", "jk", "<ESC>" , default_opts)
keymap("t", "jk", "<c-\\><c-n>",default_opts)

keymap("n", "n","nzz",default_opts)
keymap("n", "N","Nzz",default_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)
-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)
--keymap("n", "<leader>p",'"+p',default_opts)
--keymap("n","<leader>y",'"+y',default_opts)


-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- switch windows
keymap("n", "<c-right>","<c-w><c-l>",default_opts)
keymap("n", "<c-left>","<c-w><c-h>",default_opts)
keymap("n", "<c-up>","<c-w><c-k>",default_opts)
keymap("n", "<c-down>","<c-w><c-j>",default_opts)



-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)
-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)


-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Resizing panes
--keymap("n", "<leader><Left>", ":vertical resize -5<CR>", default_opts)
--keymap("n", "<leader><Right>", ":vertical resize +5<CR>", default_opts)
--keymap("n", "<leader><Up>", ":resize -5<CR>", default_opts)
--keymap("n", "<leader><Down>", ":resize +5<CR>", default_opts)

keymap("n", "<c-l>","g_", default_opts)
keymap("n", "<c-h>", "^", default_opts)

-- tree.nvim
--keymap("n", "<leader>tt", ":NvimTreeToggle<enter>", default_opts)
--keymap("n", "<leader>tfa", ":NvimTreeCollapse<enter>", default_opts)
--keymap("n", "<leader>tfa", ":NvimTreeCollapse<enter>", default_opts)
