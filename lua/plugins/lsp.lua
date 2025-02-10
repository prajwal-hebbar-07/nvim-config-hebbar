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

		for _, lsp in ipairs(servers) do
			lspconfig[lsp].setup({
				capabilities = capabilities,
			})
		end
	end,
}
