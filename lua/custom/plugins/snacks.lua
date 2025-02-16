return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = {
            enabled = false
        },
        dashboard = {
            enabled = false
        },
        explorer = {
            enabled = true
        },
        indent = {
            enabled = true
        },
        input = {
            enabled = true
        },
        notifier = {
            enabled = false
        },
        picker = {
            enabled = true
        },
        quickfile = {
            enabled = false
        },
        scope = {
            enabled = false
        },
        scroll = {
            enabled = true
        },
        statuscolumn = {
            enabled = false
        },
        words = {
            enabled = true
        },
        styles = {
            notification = {
                -- wo = { wrap = true } -- Wrap notifications
            }
        }
    },
    keys = { -- Top Pickers & Explorer
    {
        "<leader><space>",
        function()
            require("snacks.picker").smart()
        end,
        desc = "Smart Find Files"
    }, {
        "<leader>,",
        function()
            require("snacks.picker").buffers()
        end,
        desc = "Buffers"
    }, {
        "<leader>/",
        function()
            require("snacks.picker").grep()
        end,
        desc = "Grep"
    }, {
        "<leader>:",
        function()
            require("snacks.picker").command_history()
        end,
        desc = "Command History"
    }, {
        "<leader>e",
        function()
            require("snacks.explorer")()
        end,
        desc = "File Explorer"
    }, -- Git Integration
    {
        "<leader>gb",
        function()
            require("snacks.git").blame_line()
        end,
        desc = "Git Blame Line"
    }, {
        "<leader>gl",
        function()
            require("snacks.picker").git_log()
        end,
        desc = "Git Log"
    }, {
        "<leader>gs",
        function()
            require("snacks.picker").git_status()
        end,
        desc = "Git Status"
    }, {
        "<leader>gd",
        function()
            require("snacks.picker").git_diff()
        end,
        desc = "Git Diff (Hunks)"
    }, {
        "<leader>gg",
        function()
            require("snacks.lazygit")()
        end,
        desc = "Lazygit"
    }, -- Buffer Deletion
    {
        "<leader>bd",
        function()
            require("snacks.bufdelete")()
        end,
        desc = "Delete Buffer"
    }, -- Picker for Files and Words
    {
        "<leader>ff",
        function()
            require("snacks.picker").files()
        end,
        desc = "Find Files"
    }, {
        "<leader>fg",
        function()
            require("snacks.picker").git_files()
        end,
        desc = "Find Git Files"
    }, {
        "<leader>sw",
        function()
            require("snacks.picker").grep_word()
        end,
        desc = "Visual selection or word",
        mode = {"n", "x"}
    }, -- Search Keymaps
    {
        "<leader>sk",
        function()
            require("snacks.picker").keymaps()
        end,
        desc = "Search Keymaps"
    }, -- Indentation
    {
        "<leader>cR",
        function()
            require("snacks.rename").rename_file()
        end,
        desc = "Rename File"
    }, -- Additional Mappings
    {
        "]]",
        function()
            require("snacks.words").jump(vim.v.count1)
        end,
        desc = "Next Reference",
        mode = {"n", "t"}
    }, {
        "[[",
        function()
            require("snacks.words").jump(-vim.v.count1)
        end,
        desc = "Prev Reference",
        mode = {"n", "t"}
    }},
    init = function()
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                -- Setup some globals for debugging (lazy-loaded)
                _G.dd = function(...)
                    require("snacks.debug").inspect(...)
                end
                _G.bt = function()
                    require("snacks.debug").backtrace()
                end
                vim.print = _G.dd -- Override print to use snacks for `:=` command

                -- Create some toggle mappings
                require("snacks.toggle").option("spell", {
                    name = "Spelling"
                }):map("<leader>us")
                require("snacks.toggle").option("wrap", {
                    name = "Wrap"
                }):map("<leader>uw")
                require("snacks.toggle").option("relativenumber", {
                    name = "Relative Number"
                }):map("<leader>uL")
                require("snacks.toggle").diagnostics():map("<leader>ud")
                require("snacks.toggle").line_number():map("<leader>ul")
                require("snacks.toggle").option("conceallevel", {
                    off = 0,
                    on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2
                }):map("<leader>uc")
                require("snacks.toggle").treesitter():map("<leader>uT")
                require("snacks.toggle").option("background", {
                    off = "light",
                    on = "dark",
                    name = "Dark Background"
                }):map("<leader>ub")
                require("snacks.toggle").inlay_hints():map("<leader>uh")
                require("snacks.toggle").indent():map("<leader>ug")
                require("snacks.toggle").dim():map("<leader>uD")
            end
        })
    end
}
