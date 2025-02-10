return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			html = { "prettier" },
			css = { "prettier" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			go = { "gopls", "goimports" },
			json = { "prettier" },
			markdown = { "prettier" },
			dockerfile = { "prettier" },
			lua = { "stylua" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		-- Enable auto-installation of formatters
		auto_install = true,
	},
	config = function(_, opts)
		require("conform").setup(opts)

		-- Optional: Integrate with LSP for format on save
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
