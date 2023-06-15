local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quit Neovim
keymap("n", "<leader>q", ":qa!<CR>", opts)

-- save file
keymap("n", "<leader>s", ":w<CR>", opts)

-- select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<S-l>", ":bn<cr>", opts)
keymap("n", "<S-h>", ":bp<cr>", opts)

-- Resizing windows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- For laptop
-- keymap("i", "kj", "<ESC>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- File Explorer
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)

-- Run and compile
keymap("n", ";r", ":w <bar> below 70vsplit term:// runcode.sh % <cr>a", opts)
keymap("n", ";t", ":w <bar> below 20split term:// pretest.sh % <cr>a", opts)
