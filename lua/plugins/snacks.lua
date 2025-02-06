return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
	dim = {enabled = true}
  },
  keys = {
	{"<leader>bd", function() Snacks.bufdelete() end, desc = "Delete the current buffer with confirmation"},
	{"<leader>ee", function() Snacks.explorer() end, desc = "File Explorer"},
}
