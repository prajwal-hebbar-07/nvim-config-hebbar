return {
	-- LSP Configuration
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local servers = {
			"html",
			"cssls",
			"eslint",
			"jsonls",
			"gopls",
			"rust_analyzer",
			"dockerls",
			"marksman",
			"sqlls",
			"yamlls",
			"lua_ls",
			"tailwindcss",
			"bashls",
			"pyright",
			"solidity",
			"solidity_ls_nomicfoundation",
			"ts_ls", -- Use typescript-language-server
		}

		require("mason-lspconfig").setup({
			ensure_installed = servers,
			automatic_installation = true,
		})

		-- Function to set up LSP keymaps
		local function lsp_keymaps(bufnr)
			local opts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
			vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
			vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
			vim.keymap.set("n", "<space>wl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, opts)
			vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			vim.keymap.set("n", "<space>f", function()
				vim.lsp.buf.format({ async = true })
			end, opts)
		end

		for _, lsp in ipairs(servers) do
			lspconfig[lsp].setup({
				capabilities = capabilities,
				on_attach = lsp_keymaps,
			})
		end
	end,
}
