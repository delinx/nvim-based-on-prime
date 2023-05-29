-- FZF
vim.g.fzf_layout = { down = "20%" }

--opt
vim.opt.list = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.guicursor = ""
vim.opt.guifont = "RobotoNerd:h14"
vim.opt.background = "dark"
vim.opt.colorcolumn = "80"
vim.opt.textwidth = 120
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.signcolumn = "yes"
vim.opt.spell = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.scrolloff = 8
vim.opt.cmdheight = 1
vim.opt.linespace = 4
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undolevels = 10000
vim.opt.undofile = true
vim.opt.hidden = true
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.clipboard = "unnamedplus"
vim.opt.encoding = "utf-8"

-- g
vim.g.tablineclosebutton = 1
vim.g.indentLine_char = '│'
vim.g.clangd_encoding = 'utf-8'

vim.g.lsp_settings = { encoding = 'utf-8' }
