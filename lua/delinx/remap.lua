vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ff", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- save
vim.keymap.set("n", "<C-s>", "<cmd>w!<CR>")

-- Move lines up / down
vim.keymap.set("n", "<A-k>", "mz:m-2<CR>`z==")
vim.keymap.set("n", "<A-j>", "mz:m+<CR>`z==")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("i", "<A-k>", "<Esc>:m-2<CR>==gi")
vim.keymap.set("i", "<A-j>", "<Esc>:m+<CR>==gi")


-- tab << or >>
vim.keymap.set("n", "<Tab>", ">>_")
vim.keymap.set("n", "<S-Tab>", "<<_")
vim.keymap.set("v", "<Tab>", ">>_")
vim.keymap.set("v", "<S-Tab>", "<<_")

-- Format C
vim.keymap.set("n", "<leader>fC", "<cmd>:%s/^\\(\\s*\\).*\\zs{\\s*$/\\r\\1{/<CR>")

-- Format Rust
vim.keymap.set("n", "<leader>fR", "<cmd>:%! rustfmt<CR>")

-- Tree
vim.keymap.set("n", "<leader>q", "<cmd>NvimTreeToggle<CR>")


-- switch beetwen header and source
vim.keymap.set("n", "gh", "<cmd>ClangdSwitchSourceHeader<CR>")

-- format rust
vim.keymap.set("n", "frr", "<cmd>:!rustfmt %<CR>")
vim.keymap.set("n", "frc", "<cmd>:!rustfmt +nightly %<CR>")

-- Lua
vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>tr", "<cmd>TroubleToggle lsp_references<cr>",
    { silent = true, noremap = true }
)

vim.api.nvim_create_user_command('W', ":w", { nargs = 0 })
