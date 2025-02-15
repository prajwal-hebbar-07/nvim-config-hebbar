return {
  "folke/snacks.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-tree.lua",
    "kdheepak/lazygit.nvim",
  },
  config = function()
    local snacks = require("snacks")

    -- File search in picker
    snacks.setup({
      picker = {
        file = { theme = "dropdown" },
      },
    })

    -- Word search in picker
    snacks.setup({
      picker = {
        live_grep = { theme = "dropdown" },
      },
    })

    -- Word grep
    snacks.setup({
      picker = {
        grep_string = { theme = "dropdown" },
      },
    })

    -- Explorer
    snacks.setup({
      explorer = {
        cmd = "NvimTreeToggle",
      },
    })

    -- Buffer search
    snacks.setup({
      picker = {
        buffers = { theme = "dropdown" },
      },
    })

    -- Keymap search
    snacks.setup({
      picker = {
        keymaps = { theme = "dropdown" },
      },
    })

    -- Buffer delete
    snacks.setup({
      command = {
        bdelete = {
          force = true,
        },
      },
    })

    -- Git log
    snacks.setup({
      picker = {
        git_bcommits = { theme = "dropdown" },
      },
    })

    -- Git status
    snacks.setup({
      picker = {
        git_status = { theme = "dropdown" },
      },
    })

    -- Git line blame
    snacks.setup({
      picker = {
        git_blame = { theme = "dropdown" },
      },
    })

    -- Lazygit
    snacks.setup({
      command = {
        lazygit = {
          cmd = "LazyGit",
        },
      },
    })

    -- Rename
    snacks.setup({
      command = {
        rename = {
          cmd = "Lspsaga rename",
        },
      },
    })

    -- Keymaps
    vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope grep_string<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>fe", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>bd", "<cmd>Bdelete<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>gl", "<cmd>Telescope git_bcommits<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>gb", "<cmd>Telescope git_blame<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>LazyGit<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { noremap = true, silent = true })
  end,
}

