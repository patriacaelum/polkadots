-- nvim-telescope/telescope.nvim"
require("telescope").setup({
    defaults = {
        color_devicons = true,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        layout_config = {
            horizontal = {
                prompt_position = "bottom",
                preview_width = 0.55,
                results_width = 0.8,
                preview_cutoff = 20,
            },
        },
    },
    extensions = {
        fzf = {
            case_mode = "smart_case",
            fuzzy = true,
            override_file_sorter = true,
            override_generic_sorter = true,
        },
    },
})
require("telescope").load_extension("fzf")
