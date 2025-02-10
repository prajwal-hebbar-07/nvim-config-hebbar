local opts = { noremap = true, silent = true }  -- Options for non-recursive mapping and silent execution.

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })
-- These mappings move the selected lines up or down in visual mode.

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })
vim.keymap.set("n", "n", "nzzzv")  -- Centers the cursor after searching forward.
vim.keymap.set("n", "N", "Nzzzv")  -- Centers the cursor after searching backward.

vim.keymap.set("v", "<", "<gv", opts)  -- Indents the selected lines to the left.
vim.keymap.set("v", ">", ">gv", opts)  -- Indents the selected lines to the right.

vim.keymap.set("x", "<leader>p", [["_dP]])  -- Pastes over selected text without yanking it.

vim.keymap.set("v", "p", '"_dp', opts)  -- Pastes without replacing the yanked text.

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], opts) -- Yanks the entire line to the system clipboard.
vim.keymap.set("n", "<leader>Y", [["+Y]], opts)

vim.keymap.set("i", "<C-c>", "<Esc>")  -- Uses Ctrl-c to escape insert mode.
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search hl", silent = true })  -- Clears search highlights.
vim.keymap.set("i", "jj", "<Esc>")  -- Uses jj to escape insert mode.
vim.keymap.set("i", "jk", "<Esc>")  -- Uses jk to escape insert mode.

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)  -- Formats the buffer using LSP.

vim.keymap.set("n", "Q", "<nop>")  -- Disables the Ex mode (Q).

vim.keymap.set("n", "x", '"_x', opts)  -- Deletes a character without affecting the default register.

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace word cursor is on globally" })  -- Replaces the word under the cursor globally.

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "makes file executable" })
-- Makes the current file executable.

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
-- Highlights yanked text briefly.

-- Copies the file path to the clipboard
vim.keymap.set("n", "<leader>cfp", function()
  local filePath = vim.fn.expand("%:~") -- Gets the file path relative to the home directory
  vim.fn.setreg("+", filePath) -- Copies the file path to the clipboard register
  print("File path copied to clipboard: " .. filePath) -- Optional: print message to confirm
end, { desc = "Copy file path to clipboard" })

-- Toggles LSP diagnostics visibility
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>ldx", function()
    isLspDiagnosticsVisible = not isLspDiagnosticsVisible
    vim.diagnostic.config({
        virtual_text = isLspDiagnosticsVisible,
        underline = isLspDiagnosticsVisible
    })
end, { desc = "Toggle LSP diagnostics" })

