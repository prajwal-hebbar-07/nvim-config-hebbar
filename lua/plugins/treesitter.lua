return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Ensure the plugin is built/updated
  config = function()
    require'nvim-treesitter.configs'.setup {
      -- Ensure these language parsers are installed
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "lua",
        "json",
        "go",
        "markdown",
        "markdown_inline",
        "bash",
        "yaml",
        "regex",
        "vim",
        "query"
      },

      -- Automatically install missing parsers on demand
      auto_install = true,

      -- Enable syntax highlighting
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      -- Enable indentation
      indent = {
        enable = true,
      },

      -- Enable incremental selection based on node types
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },

      -- Enable code folding based on treesitter
      fold = {
        enable = true,
        auto_fold = false,
      },

      -- Enable Treesitter-based code navigation
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]m"] = "@function.outer",
            ["]c"] = "@class.outer",
          },
          goto_next_end = {
            ["]M"] = "@function.outer",
            ["]C"] = "@class.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[c"] = "@class.outer",
          },
          goto_previous_end = {
            ["[M"] = "@function.outer",
            ["[C"] = "@class.outer",
          },
        },
      },
    }
  end
}

