return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		disable_filetype = { "TelescopePrompt", "vim" },
	},
	config = function(_, opts)
		require("nvim-autopairs").setup(opts)

		-- Additional customization for specific pairs
		local Rule = require("nvim-autopairs.rule")
		local npairs = require("nvim-autopairs")

		-- Custom rules for specific pairs
		npairs.add_rules({
			Rule("$", "$", { "javascript", "typescript" }),
		})

		-- Integrate with completion plugins
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
