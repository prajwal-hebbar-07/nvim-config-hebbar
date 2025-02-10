return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- Define your keywords and their corresponding icons and colors
		keywords = {
			FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT" } },
			TODO = { icon = " ", color = "info" },
			HACK = { icon = " ", color = "warning" },
			WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
			PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
			NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
			TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
			DONE = { icon = " ", color = "done" },
			FUTURE = { icon = "﬘ ", color = "future" },
			ENHANCEMENT = { icon = " ", color = "enhancement" },
			OPTIMISE = { icon = " ", color = "optimise" },
		},
		-- Define the colors for each keyword
		colors = {
			error = { "#DC2626" },
			warning = { "#FBBF24" },
			info = { "#2563EB" },
			hint = { "#10B981" },
			default = { "#737373" },
			test = { "#FF00FF" },
			done = { "#008000" },
			future = { "#8A2BE2" },
			enhancement = { "#FFA500" },
			optimise = { "#00CED1" },
		},
		-- Other configuration options
		highlight = {
			before = "", -- "fg" or "bg" or empty
			keyword = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
			after = "fg", -- "fg" or "bg" or empty
			pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
			comments_only = true, -- uses treesitter to match keywords in comments only
			max_line_len = 400, -- ignore lines longer than this
			exclude = {}, -- list of file types to exclude highlighting
		},
		search = {
			command = "rg",
			args = {
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
			},
			pattern = [[\b(KEYWORDS):]], -- ripgrep regex
		},
	},
	keys = {
		-- Keymap to search TODO comments using snacks.nvim picker
		{
			"<leader>st",
			function()
				require("todo-comments").jump_next()
			end,
			desc = "Next TODO Comment",
		},
		{
			"<leader>sT",
			function()
				require("todo-comments").jump_prev()
			end,
			desc = "Previous TODO Comment",
		},
		{
			"<leader>stf",
			function()
				require("snacks.picker").todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
			end,
			desc = "Search TODO/FIX Comments",
		},
		{
			"<leader>std",
			function()
				require("snacks.picker").todo_comments({ keywords = { "DONE" } })
			end,
			desc = "Search DONE Comments",
		},
		{
			"<leader>stp",
			function()
				require("snacks.picker").todo_comments({ keywords = { "PERF", "OPTIMISE" } })
			end,
			desc = "Search PERF/OPTIMISE Comments",
		},
		{
			"<leader>ste",
			function()
				require("snacks.picker").todo_comments({ keywords = { "ENHANCEMENT" } })
			end,
			desc = "Search ENHANCEMENT Comments",
		},
		{
			"<leader>stt",
			function()
				require("snacks.picker").todo_comments({ keywords = { "TEST" } })
			end,
			desc = "Search TEST Comments",
		},
	},
}
