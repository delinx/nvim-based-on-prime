-- Open fzf
vim.keymap.set("n", "<leader>z", "<cmd>:FzfLua git_files<CR>")
vim.keymap.set("n", "<leader>b", "<cmd>:FzfLua buffers<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>:FzfLua live_grep<CR>")
vim.keymap.set("n", "<leader>ff", "<cmd>:FzfLua<CR>")

require('fzf-lua').setup {
    winopts = {
        cmd = "rg --color=never --files --hidden --follow -g '!.git'",
        fzf_opts = { ['--layout'] = 'bottom', ['height'] = '40%' },
    }
}
