return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    explorer = { enabled = true },
    git = { enabled = true },
    bufdelete = { enabled = true },
    lazygit = { enabled = true },
    picker = { enabled = true },
    indent = { enabled = true }
  },
  keys = {
    -- File Explorer
    { "<leader>e", function() require("snacks.explorer")() end, desc = "File Explorer" },

    -- Git Integration
    { "<leader>gb", function() require("snacks.picker").git_branches() end, desc = "Git Branches" },
    { "<leader>gl", function() require("snacks.picker").git_log() end, desc = "Git Log" },
    { "<leader>gs", function() require("snacks.picker").git_status() end, desc = "Git Status" },
    { "<leader>gd", function() require("snacks.picker").git_diff() end, desc = "Git Diff (Hunks)" },
    { "<leader>gg", function() require("snacks.lazygit")() end, desc = "Lazygit" },

    -- Buffer Deletion
    { "<leader>bd", function() require("snacks.bufdelete")() end, desc = "Delete Buffer" },

    -- Picker for Files and Words
    { "<leader>ff", function() require("snacks.picker").files() end, desc = "Find Files" },
    { "<leader>fg", function() require("snacks.picker").git_files() end, desc = "Find Git Files" },
    { "<leader>sw", function() require("snacks.picker").grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },

    -- Indentation
    { "<leader>ui", function() require("snacks.indent")() end, desc = "Toggle Indentation Guides" },

    -- Rename File
    { "<leader>cR", function() require("snacks.rename").rename_file() end, desc = "Rename File" },
  },
}

