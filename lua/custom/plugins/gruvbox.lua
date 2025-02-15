return {
  "sainnhe/gruvbox-material",
  config = function()
    -- Load the gruvbox-material colorscheme
    vim.cmd("colorscheme gruvbox-material")

    -- Enable transparency
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_transparent_background = 2

    -- Optional: Customize highlight groups for better visibility
    vim.cmd([[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NonText guibg=NONE ctermbg=NONE
      highlight LineNr guibg=NONE ctermbg=NONE
      highlight Folded guibg=NONE ctermbg=NONE
      highlight EndOfBuffer guibg=NONE ctermbg=NONE
    ]])
  end,
}

