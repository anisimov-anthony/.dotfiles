require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.clipboard = "unnamedplus"

-- Hybrid line numbers: absolute on current line, relative on others
vim.opt.number = true
vim.opt.relativenumber = true

-- Set tabs to 4 spaces
vim.opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.softtabstop = 4 -- Number of spaces that a <Tab> counts for while editing
