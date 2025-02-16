return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			--- @usage 'auto'|'main'|'moon'|'dawn'
			variant = "auto",
			--- @usage 'main'|'moon'|'dawn'
			dark_variant = "main",
			bold_vert_split = false,
			dim_nc_background = false,
			disable_background = true,
			disable_float_background = true, -- Enable transparency for floating windows
			disable_italics = false,

			--- @usage string hex value or named color from rosepinetheme.com/palette
			groups = {
				background = "base",
				background_nc = "_experimental_nc",
				panel = "surface",
				panel_nc = "base",
				border = "highlight_med",
				comment = "muted",
				link = "iris",
				punctuation = "subtle",

				error = "love",
				hint = "iris",
				info = "foam",
				warn = "gold",

				headings = {
					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},
				-- or set all headings at once
				-- headings = 'subtle'
			},

			-- Change specific vim highlight groups
			highlight_groups = {
				ColorColumn = { bg = "rose" },
				CursorLine = { bg = "foam", blend = 10 },
				StatusLine = { fg = "love", bg = "love", blend = 10 },
				NormalFloat = { bg = "NONE" }, -- Transparent background for floating windows
				FloatBorder = { bg = "NONE" }, -- Transparent background for floating borders
				LazyNormal = { bg = "NONE" }, -- Transparent background for LazyGit
				LazyFloat = { bg = "NONE" }, -- Transparent background for LazyGit floating windows
			},
		})

		-- Set the colorscheme
		vim.cmd.colorscheme("rose-pine")

		-- Enable transparency
		vim.cmd([[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NonText guibg=NONE ctermbg=NONE
      highlight LineNr guibg=NONE ctermbg=NONE
      highlight Folded guibg=NONE ctermbg=NONE
      highlight EndOfBuffer guibg=NONE ctermbg=NONE
      highlight Pmenu guibg=NONE ctermbg=NONE 
      highlight NormalNC guibg=NONE ctermbg=NONE 
    ]])
	end,
}
