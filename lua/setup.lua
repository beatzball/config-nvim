vim.cmd("set clipboard=unnamedplus")
vim.cmd("set number")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set autoindent")

vim.cmd("set ignorecase")
vim.cmd("set smartcase")

-- vim.cmd("set cursorline")

vim.cmd("set termguicolors")
vim.cmd("set background=dark")
vim.cmd("set signcolumn=yes")

-- vim.cmd("set backspace=indent,eol,start")

-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = ","

-- lazy.nvim setup
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

-- local opts = {}
-- require("lazy").setup(plugins, opts)

-- pluigns now come from lua/plugins
require("lazy").setup("plugins")
