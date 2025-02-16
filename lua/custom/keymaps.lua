-- Basic navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Move to window below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Move to window above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Move to right window" })

-- Resize windows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window height" })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { noremap = true, silent = true, desc = "Increase window height" })
vim.keymap.set(
	"n",
	"<C-Left>",
	":vertical resize -2<CR>",
	{ noremap = true, silent = true, desc = "Decrease window width" }
)
vim.keymap.set(
	"n",
	"<C-Right>",
	":vertical resize +2<CR>",
	{ noremap = true, silent = true, desc = "Increase window width" }
)

-- Buffer navigation
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { noremap = true, silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true, desc = "Delete buffer" })

-- Save and quit
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true, desc = "Quit window" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true, desc = "Save and quit" })

-- Indentation
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true, desc = "Decrease indentation" })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true, desc = "Increase indentation" })

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move lines up" })

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Yank to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { noremap = true, silent = true, desc = "Yank line to system clipboard" })

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true, desc = "Paste from system clipboard" })
vim.keymap.set("v", "<leader>p", '"+p', { noremap = true, silent = true, desc = "Paste from system clipboard" })
vim.keymap.set(
	"n",
	"<leader>P",
	'"+P',
	{ noremap = true, silent = true, desc = "Paste before cursor from system clipboard" }
)

-- LSP (if installed)
vim.keymap.set(
	"n",
	"gd",
	"<cmd>lua vim.lsp.buf.definition()<CR>",
	{ noremap = true, silent = true, desc = "Go to definition" }
)
vim.keymap.set(
	"n",
	"gD",
	"<cmd>lua vim.lsp.buf.declaration()<CR>",
	{ noremap = true, silent = true, desc = "Go to declaration" }
)
vim.keymap.set(
	"n",
	"gi",
	"<cmd>lua vim.lsp.buf.implementation()<CR>",
	{ noremap = true, silent = true, desc = "Go to implementation" }
)
vim.keymap.set(
	"n",
	"gr",
	"<cmd>lua vim.lsp.buf.references()<CR>",
	{ noremap = true, silent = true, desc = "List references" }
)
vim.keymap.set(
	"n",
	"<leader>rn",
	"<cmd>lua vim.lsp.buf.rename()<CR>",
	{ noremap = true, silent = true, desc = "Rename symbol" }
)
vim.keymap.set(
	"n",
	"<leader>ca",
	"<cmd>lua vim.lsp.buf.code_action()<CR>",
	{ noremap = true, silent = true, desc = "Code actions" }
)
vim.keymap.set(
	"n",
	"<leader>e",
	"<cmd>lua vim.diagnostic.open_float()<CR>",
	{ noremap = true, silent = true, desc = "Show diagnostics" }
)
vim.keymap.set(
	"n",
	"[d",
	"<cmd>lua vim.diagnostic.goto_prev()<CR>",
	{ noremap = true, silent = true, desc = "Previous diagnostic" }
)
vim.keymap.set(
	"n",
	"]d",
	"<cmd>lua vim.diagnostic.goto_next()<CR>",
	{ noremap = true, silent = true, desc = "Next diagnostic" }
)
