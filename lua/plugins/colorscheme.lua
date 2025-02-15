return {
	-- {
	--   "catppuccin/nvim",
	--   lazy = false,
	--   name = "catppuccin",
	--   priority = 1000,
	--
	--   config = function()
	--     require("catppuccin").setup({
	--       -- Choose a dark variant
	--       flavour = "mocha", -- Options: "mocha", "macchiato", "frappe", "latte"
	--
	--       -- Enable transparency
	--       transparent_background = true,
	--
	--       -- Additional customization options
	--       styles = {
	--         comments = { "italic" },
	--         functions = { "bold" },
	--         keywords = { "bold" },
	--         types = { "bold,italic" },
	--       },
	--       integrations = {
	--         cmp = true,
	--         gitsigns = true,
	--         nvimtree = true,
	--         treesitter = true,
	--         notify = false,
	--         -- Add more integrations as needed
	--       },
	--     })
	--
	--     -- Set the colorscheme
	--     vim.cmd.colorscheme "catppuccin"
	--   end
	-- }
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				-- Choose the 'night' variant for dark background
				style = "night",

				-- Enable transparency
				transparent = true,

				-- Additional customization options
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = { bold = true },
					variables = {},
					sidebars = "dark", -- Style for sidebars (e.g., NvimTree)
					floats = "dark", -- Style for floating windows
				},
				sidebars = { "qf", "vista_kind", "terminal", "packer" },
				day_brightness = 0.3,
				hide_inactive_statusline = false,
				dim_inactive = false,
				lualine_bold = false,
			})

			-- Set the colorscheme
			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
