require 'key-menu'.set('n','\\')

function default(descS)
	return {desc=descS , noremap=true , silent = true}
end

vim.keymap.set('n','\\w','<Cmd>w<CR>',default('Save'))
vim.keymap.set("n","<leader>rm","gg:%s/\\r//g<enter>",default('Remove \\r'))
vim.keymap.set("n", "<leader><Left>", ":vertical resize -5<CR>",default('resize vSize -5'))
vim.keymap.set("n", "<leader><right>", ":vertical resize +5<CR>",default('resize vSize +5'))
vim.keymap.set("n", "<leader><Up>", ":resize -5<CR>",default('resize Size -5'))
vim.keymap.set("n", "<leader><Down>", ":resize +5<CR>",default('resize Size +5'))

vim.keymap.set("n", "<leader>p",'"+p',default("paste"))
vim.keymap.set("n","<leader>y",'"+y',default("yank"))

vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<enter>", default("nvim-tree"))
vim.keymap.set("n", "<leader>tff", ":NvimTreeCollapse<enter>", default("tree fold"))
vim.keymap.set("n", "<leader>tfo", ":<enter>", default("tree fold"))



vim.keymap.set("n","<c-f>f","<cmd>FzfLua files<cr>",default("find files"))
vim.keymap.set("n","<c-f>b","<cmd>FzfLua buffers<cr>",default("find buffers"))
vim.keymap.set("n","<c-f>l","<cmd>FzfLua blines<cr>",default("find lines"))


vim.keymap.set("n","<c-g>p","<cmd>FzfLua live_grep<cr>",default("grep project"))
vim.keymap.set("n","<c-g>b","<cmd>FzfLua kgrep_curbuf<cr>",default("grep current buffer"))
