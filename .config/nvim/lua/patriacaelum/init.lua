require("patriacaelum.opt")
require("patriacaelum.remap")


-- Bootstrap Lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- Autosave
vim.api.nvim_create_autocmd({"FocusLost"}, {command = "silent! wa"})


-- Installed plugins
require("lazy").setup({
    { "folke/trouble.nvim" },
    {
        "folke/which-key.nvim",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        lazy = true,
    },
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufReadPre", "BufNewFile" },
        main = "ibl",
        opts = {},
    },
    {
        "mbbill/undotree",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                icons_enabled = true,
                theme = "onedark",
                component_separators = "|",
                section_separators = "",
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
    },
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
    },
    {
        "tpope/vim-fugitive",
        lazy = true,
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/nvim-cmp",
            "L3MON4D3/LuaSnip",
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        lazy = true,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },
})

-- Set theme
vim.cmd("colorscheme onedark_vivid")

-- Setup LSP
local lsp_zero = require("lsp-zero")
lsp_zero.on_attach(
    function(client, bufnr)
        lsp_zero.default_keymaps({ buffer = bufnr })
    end
)
lsp_zero.preset({
    name = "minimal",
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})
lsp_zero.setup({})

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {
        "bashls",
        "clangd",
        "cssls",
        "html",
        "jedi_language_server",
        "jsonls",
        "lua_ls",
        "texlab",
        "rust_analyzer",
        "yamlls",
    },
    handlers = { lsp_zero.default_setup },
})

require("lspconfig")["lua_ls"].setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})
