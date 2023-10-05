-- nvim-treesitter/nvim-treesitter
require("nvim-treesitter.configs").setup({
    auto_install = true,
    ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "csv",
        "html",
        "json",
        "latex",
        "lua",
        "python",
        "query",
        "rust",
        "vim",
        "vimdoc",
    },
    highlight = { enable = true },
    indent = { enable = true },
    sync_install = false,
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                -- Assignment
                ["a="] = {
                    query = "@assignment.outer",
                    desc = "Select outer assignment"
                },
                ["i="] = {
                    query = "@assingment.inner",
                    desc = "Select inner assignment",
                },
                ["h="] = {
                    query = "@assignment.lhs",
                    desc = "Select left assignment",
                },
                ["l="] = {
                    query = "@assignment.rhs",
                    desc = "Select right assignment",
                },
                -- Class
                ["ac"] = { query = "@class.outer", desc = "Select outer class" },
                ["ic"] = { query = "@class.inner", desc = "Select inner class" },
                -- Function
                ["af"] = { query = "@function.outer", desc = "Select outer function" },
                ["if"] = { query = "@function.inner", desc = "Select inner function" },
                -- Conditional (If)
                ["ai"] = {
                    query = "@conditional.outer",
                    desc = "Select outer conditional (if)",
                },
                ["ii"] = {
                    query = "@conditional.inner",
                    desc = "Select inner conditional (if)",
                },
                -- Loop
                ["al"] = { query = "@loop.outer", desc = "Select outer loop" },
                ["il"] = { query = "@loop.inner", desc = "Select inner loop" },
            },
        },
    },
})
