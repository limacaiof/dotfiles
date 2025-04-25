-- globals
local g = vim.g
g.mapleader = " "
g.maplocalleader = " "
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- cmd
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
-- vim.cmd("set number")
vim.cmd("set nohlsearch")
vim.cmd("set clipboard=unnamedplus")

-- options
local opt = vim.opt
opt.termguicolors = true

