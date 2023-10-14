vim.opt.guicursor = ""

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.backup = false

vim.opt.clipboard = "unnamedplus"
vim.opt.colorcolumn = "80"

vim.opt.expandtab = true

vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.nu = true

vim.opt.scrolloff = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.splitright = true
vim.opt.swapfile = false

vim.opt.tabstop = 4
vim.opt.termguicolors = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.updatetime = 60
