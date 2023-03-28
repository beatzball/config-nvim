-- set leader key to space
vim.g.mapleader = ","

local map = vim.api.nvim_set_keymap
local keymap = vim.keymap

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
map("i", "jk", "<ESC>", { noremap = true, silent = false, desc = "Insert Mode Exit" })

-- increment/decrement numbers
map("n", "<leader>+", "<C-a>", { noremap = true, silent = false, desc = "Number Increment" }) -- increment
map("n", "<leader>-", "<C-x>", { noremap = true, silent = false, desc = "Number Decrement" }) -- decrement

-- window management
map("n", "<leader>sv", "<C-w>v", { noremap = true, silent = false, desc = "Split Vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { noremap = true, silent = false, desc = "Split Horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { noremap = true, silent = false, desc = "Split Equal Width" }) -- make split windows equal width & height
map("n", "<leader>sx", ":close<CR>", { noremap = true, silent = false, desc = "Split Close Current" }) -- close current split window

map("n", "<leader>to", ":tabnew<CR>", { noremap = true, silent = false, desc = "Tab Open New" }) -- open new tab
map("n", "<leader>tx", ":tabclose<CR>", { noremap = true, silent = false, desc = "Tab Close Current" }) -- close current tab
map("n", "<leader>tn", ":tabn<CR>", { noremap = true, silent = false, desc = "Tab Next" }) --  go to next tab
map("n", "<leader>tp", ":tabp<CR>", { noremap = true, silent = false, desc = "Tab Previous" }) --  go to previous tab

-- buffers
map("n", "<leader>bn", ":bn<CR>", { noremap = true, silent = false, desc = "Buffer Next" })
map("n", "gt", ":bn<CR>", { noremap = true, silent = false, desc = "Buffer Next" })

map("n", "<leader>bp", ":bp<CR>", { noremap = true, silent = false, desc = "Buffer Previous" })
map("n", "gT", ":bp<CR>", { noremap = true, silent = false, desc = "Buffer Previous" })

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
map("n", "<leader>z", ":MaximizerToggle<CR>", { noremap = true, silent = false, desc = "Maximize Current Toggle" }) -- toggle split window maximization

-- nvim-tree
map("n", "<leader>ex", ":NvimTreeToggle<CR>", { noremap = true, silent = false, desc = "File Explorer Toggle" }) -- toggle file explorer
map("n", "<leader>eo", ":NvimTreeFocus<CR>", { noremap = true, silent = false, desc = "File Explorer Focus" }) -- focus file explorer
map("n", "<leader>ef", ":NvimTreeFindFile<CR>", { noremap = true, silent = false, desc = "File Explorer File Focus" }) -- focus file explorer

-- telescope
map("n", "<leader>p", "<cmd>Telescope find_files<cr>", { noremap = true, silent = false, desc = "Find Files" }) -- find files within current working directory, respects .gitignore
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { noremap = true, silent = false, desc = "Find Files in CWD" }) -- find files within current working directory, respects .gitignore
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = false, desc = "Find String in CWD" }) -- find string in current working directory as you type
map(
	"n",
	"<leader>fc",
	"<cmd>Telescope grep_string<cr>",
	{ noremap = true, silent = false, desc = "Find String Under Cursor in CWD" }
) -- find string under cursor in current working directory
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { noremap = true, silent = false, desc = "List Open Buffers" }) -- list open buffers in current neovim instance
map(
	"n",
	"<leader>fh",
	"<cmd>Telescope help_tags<cr>",
	{ noremap = true, silent = false, desc = "List Available Help Tags" }
) -- list available help tags
map("n", "<leader>fx", ":nohl<CR>", { noremap = true, silent = false, desc = "Clear Search Highlights" }) -- clear search highlights

-- telescope git commands (not on youtube nvim video)
map(
	"n",
	"<leader>gc",
	"<cmd>Telescope git_commits<cr>",
	{ noremap = true, silent = false, desc = "Git Commits List All" }
) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
map(
	"n",
	"<leader>gfc",
	"<cmd>Telescope git_bcommits<cr>",
	{ noremap = true, silent = false, desc = "Git Commits List for Current File" }
) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
map(
	"n",
	"<leader>gb",
	"<cmd>Telescope git_branches<cr>",
	{ noremap = true, silent = false, desc = "Git Commits List Branches" }
) -- list git branches (use <cr> to checkout) ["gb" for git branch]
map(
	"n",
	"<leader>gs",
	"<cmd>Telescope git_status<cr>",
	{ noremap = true, silent = false, desc = "Git List Current Changes Per File w/ Diff Preview" }
) -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
map("n", "<leader>rs", ":LspRestart<CR>", { noremap = true, silent = false, desc = "Restart LSP" }) -- mapping to restart lsp if necessary
