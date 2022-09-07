local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.autoindent = true
set.colorcolumn = "78"
set.smartindent = true

vim.o.hlsearch = false
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.wrap = false
set.scrolloff = 8
set.fileencoding = 'utf-8'
set.termguicolors = true

set.relativenumber = true

set.hidden = true

vim.o.background = "dark"

-- makefile specific
vim.cmd[[autocmd FileType make setlocal noexpandtab]]
