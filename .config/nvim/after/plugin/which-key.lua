-- folke/which-key.nvim
require("which-key").register(
    {
        b = {
            name = "+buffer",
            d = { "<cmd>bd<cr>", "Delete Buffer" },
            w = { "<cmd>bw<cr>", "Wipeout Buffer" },
        },
        c = {
            name = "+code",
            R = { "<cmd>LspRestart<cr>", "Restart LSP" },
            d = {
                "<cmd>TroubleToggle document_diagnostics<cr>",
                "Document Diagnostics",
            },
            i = { "<cmd>InspectTree<cr>", "Code InspectTree" },
            k = { "vim.lsp.buf.hover", "Show Documentation" },
            l = { "vim.diagnostic.open_float", "Line Diagnostics" },
            n = { "vim.diagnostic.goto_next", "Next Diagnostic" },
            p = { "vim.diagnostic.goto_prev", "Previous Diagnosic" },
            r = { "vim.lsp.buf.rename", "Code Rename" },
        },
        f = {
            name = "+find",
            b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
            c = {
                i = { "<cmd>Telescope lsp_incoming_calls<cr>", "Find Incoming Calls" },
                o = { "<cmd>Telescope lsp_outgoing_calls<cr>", "Find Outgoing Calls" },
            },
            d = { "<cmd>Telescope lsp_definitions<cr>", "Find Definition" },
            f = { "<cmd>Telescope find_files<cr>", "Find File" },
            g = { "<cmd>Telescope live_grep<cr>", "Find Grep" },
            i = { "<cmd>Telescope lsp_implementations<cr>", "Find Implementations" },
            p = { "<cmd>Telescope oldfiles<cr>", "Find Previously Opened" },
            r = { "<cmd>Telescope lsp_references<cr>", "Find References" },
            s = { "<cmd>Telescope grep_string<cr>", "Find Selection"},
            v = { "<cmd>Telescope treesitter<cr>", "Find Variables"},
        },
        g = {
            name = "+git",
            a = { "<cmd>Git add<cr>", "Git Add" },
            b = {
                name = "+blame/branch",
                l = { "<cmd>Telescope git_branches<cr>", "Git Branche List" },
                t = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Git Blame Toggle" },
            },
            d = { "<cmd>Git diff<cr>", "Git Diff" },
            c = { "<cmd>Telescope git_commits<cr>", "Git Commits" },
            l = { "<cmd>Git log<cr>", "Git Log" },
            s = { "<cmd>Telescope git_status<cr>", "Git Status", },
        },
        t = {
            c = { "<cmd>NvimTreeCollapse<cr>", "Tree Collapse" },
            f = { "<cmd>NvimTreeFocus<cr>", "Tree Focus" },
            p = {
                "<cmd>lua require('nvim-tree.api').node.navigate.parent()<cr>",
                "Tree Parent Directory",
            },
            s = {
                "<cmd>lua require('nvim-tree.api').tree.search_node()<cr>",
                "Tree Search",
            },
            t = { "<cmd>NvimTreeToggle<cr>", "Tree Toggle" },
        },
        u = {
            name = "+undo",
            t = { "<cmd>UndotreeToggle<cr>", "Undotree Toggle" },
        },
        w = {
            name = "+window",
            H = { "<C-w>H", "Move Window Left" },
            J = { "<C-w>J", "Move Window Down" },
            K = { "<C-w>K", "Move Window Up" },
            L = { "<C-w>L", "Move Window Right" },
            d = { "<cmd>close<cr>", "Close Window" },
            h = { "<C-w>h", "Switch to Left Window" },
            j = { "<C-w>j", "Switch to Lower Window" },
            k = { "<C-w>k", "Switch to Upper Window" },
            l = { "<C-w>l", "Switch to Right Window" },
            n = { "<cmd>tabn<cr>", "Next Tab" },
            p = { "<cmd>tabp<cr>", "Previous Tab" },
            s = { "<C-w>v", "New Window Horizontal" },
            t = { "<cmd>tabnew<cr>", "New Tab" },
            v = { "<C-w>s", "New window Vertical" },
            w = { "<cmd>tabclose<cr>", "Close Tab" },
        },
        x = {
            name = "+comment",
            l = { "<cmd>CommentToggle<cr>", "Comment Line" },
            s = { "<cmd>'<,'>CommentToggle<cr>", "Comment Selection" },
        },
        z = {
            name = "+fold",
            o = { "<cmd>lua require('ufo').openAllFolds<cr>", "Open all folds" },
            c = { "<cmd>lua require('ufo').closeAllFolds<cr>", "Close all folds" },
        },
    },
    { prefix = "<leader>" }
)
