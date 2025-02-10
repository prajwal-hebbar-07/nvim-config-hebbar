-- Disables the banner displayed by netrw when opening the file explorer.
vim.cmd("let g:netrw_banner = 0 ")

-- Sets the Cursor Shape in GUI Mode to be the same as in Terminal Mode.
vim.opt.guicursor = ""

-- Sets line numbers and relative line numbers.
vim.opt.nu = true
vim.opt.relativenumber = true

-- Sets tab width to 4 spaces, converts tabs to spaces, enables auto and smart indentation & enables line wrapping.
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = true 

-- Disables swap files & backup files, enables persistent undo, and sets the undo directory.
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Enables incremental search and shows the results of command like :substitute in a split window.
vim.opt.incsearch = true
vim.opt.inccommand = "split"

-- Makes searches case sensitive unless uppercase letter is used.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enables true color support and sets the background to dark.
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Keep 8 lines above & below the cursor when scrolling, and always shows the sign column.
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Enables folding, sets the fold method to manual, opens most folds by default, and hides the fold columns.
vim.o.foldenable = true
vim.o.foldmethod = "manual"
vim.o.foldlevel = 99
vim.o.foldcolumn = "0"

-- Allows backspacing over line breaks, auto-indentation, and start of insert.
vim.opt.backspace = {"start", "eol", "indent"}

-- Opens vertical splits to the right and horizontal splits below the current window.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Includes @ in the set of characters considered part of file names.
vim.opt.isfname:append("@-@")

-- Sets the time (in ms) to wait before writing swap files and triggering certain events.
vim.opt.updatetime = 50

-- Use the system clipboard for all operations.
-- vim.opt.clipboard:append("unnamedplus")

-- Highlights search results
vim.opt.hlsearch = true

-- Enables mouse support in all modes.
vim.opt.mouse = "a"

-- Enables support for .editorconfig files, which define code styles for different projects.
vim.g.editorconfig = true
