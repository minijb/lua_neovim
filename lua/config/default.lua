local api = vim.api
local g = vim.g
local opt = vim.opt

vim.g.shiftwidth = 4
vim.g.tabstop = 4
vim.g.softtabstop = 4
vim.g.textwidth =120
vim.g.expandtab=true
vim.g.autoindent=true

vim.bo.softtabstop=4
vim.bo.expandtab=true
vim.bo.tabstop=4
vim.bo.shiftwidth=4
g.encoding = "UTF-8"
-- Remap leader and local leader to <Space>
api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })

opt.termguicolors = true -- Enable colors in terminal
opt.hlsearch = true --Set highlight on search
opt.number = true --Make line numbers default
opt.relativenumber = true --Make relative number default
opt.mouse = "a" --Enable mouse mode
opt.breakindent = true --Enable break indent
opt.undofile = true --Save undo history
opt.ignorecase = true --Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Smart case
opt.updatetime = 250 --Decrease update time
opt.signcolumn = "yes" -- Always show sign column
opt.clipboard = "unnamedplus" -- Access system clipboard
--opt.wildmode = "longest,list"

g.mapleader = "\\"
g.maplocalleader = "\\"

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

