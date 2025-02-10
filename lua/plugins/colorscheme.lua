return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,

    config = function()
      require("catppuccin").setup({
        -- Choose a dark variant
        flavour = "mocha", -- Options: "mocha", "macchiato", "frappe", "latte"

        -- Enable transparency
        transparent_background = true,

        -- Additional customization options
        styles = {
          comments = { "italic" },
          functions = { "bold" },
          keywords = { "bold" },
          types = { "bold,italic" },
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          -- Add more integrations as needed
        },
      })

      -- Set the colorscheme
      vim.cmd.colorscheme "catppuccin"
    end
  }
}
