return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				markdown = { "prettier" },
				go = { "gofumpt" },
				sh = { "shfmt" },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})

		-- Optional: Format on save
		vim.cmd([[
      augroup FormatAutogroup
        autocmd!
        autocmd BufWritePre * lua require('conform').format()
      augroup END
    ]])

		-- Optional: Key mapping to format manually
		vim.api.nvim_set_keymap(
			"n",
			"<leader>f",
			'<cmd>lua require("conform").format()<CR>',
			{ noremap = true, silent = true }
		)
	end,
}
