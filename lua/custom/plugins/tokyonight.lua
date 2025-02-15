return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night", -- Choose the 'night' variant for dark background
      transparent = true, -- Enable transparency
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
}

