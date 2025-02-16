-- Add this to your plugin configuration file, e.g., custom/plugins/init.lua
return {
	"neovim/nvim-lspconfig",
	event = "BufReadPre",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- Example configuration for TypeScript server
		lspconfig.tsserver.setup({
			capabilities = capabilities,
			on_attach = function(client, bufnr)
				-- Enable completion triggered by <c-x><c-o>
				vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
			end,
		})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"tsserver", -- TypeScript/JavaScript
				"pyright", -- Python
				"lua_ls", -- Lua
				"gopls", -- Go
				"bashls", -- Bash
				"yamlls", -- YAML
				"dockerls", -- Docker
				"html", -- HTML
				"cssls", -- CSS
				"jsonls", -- JSON
				"marksman", -- Markdown
				"tailwindcss", -- Tailwind CSS
			},
			automatic_installation = true,
		})

		-- Add more language servers here as needed
		lspconfig.pyright.setup({ capabilities = capabilities })
		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.gopls.setup({ capabilities = capabilities })
		lspconfig.bashls.setup({ capabilities = capabilities })
		lspconfig.yamlls.setup({ capabilities = capabilities })
		lspconfig.dockerls.setup({ capabilities = capabilities })
		lspconfig.html.setup({ capabilities = capabilities })
		lspconfig.cssls.setup({ capabilities = capabilities })
		lspconfig.jsonls.setup({ capabilities = capabilities })
		lspconfig.marksman.setup({ capabilities = capabilities })
		lspconfig.tailwindcss.setup({ capabilities = capabilities })
	end,
}
