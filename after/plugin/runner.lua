require('code_runner').setup({
    mode = "term",
    focus = false,
    startinsert = true,
    -- put here the commands by filetype
    filetype = {
        zig = {
            "zig build &&",
            "./zig-out/bin/*"
        },
    },
    project = {
        ["~/projects/zig/valise"] = {
            name = "Valise",
            description = "Trello but native",
            command = "zig build && ./zig-out/bin/*",
        },
        ["~/projects/web/del.cx"] = {
            name = "del.cx",
            description = "My website",
            command = "./compile.sh",
        },
    },
})

local running = false


function BuildAndRun()
    if running then
        vim.cmd(":RunClose")
        vim.cmd(":RunCode")
        running = false
        vim.cmd(":w")
    else
        vim.cmd(":RunCode")
        running = true
        vim.cmd(":w")
    end
end

--vim.keymap.set({ "n", "v", "i" }, "<F5>", "<cmd>:lua BuildAndRun()<CR>")
vim.keymap.set({ "n", "v", "i" }, "<F4>", "<cmd>:lua BuildAndRun()<CR>")
vim.keymap.set({ "n", "v", "i" }, "<F3>", "<cmd>:RunClose<CR>")
