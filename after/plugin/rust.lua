-- weird solution to broken LSP errors / rainbow brackets, seems to work

function rustFormatFix()
    local currentView = vim.fn.winsaveview()
    vim.cmd("silent! !rustfmt +nightly %")
    vim.cmd(":e!")
    vim.fn.winrestview(currentView)
    vim.cmd(":TSDisable rainbow")
    vim.cmd(":TSEnable rainbow")
end

vim.cmd("autocmd BufWritePost *.rs lua rustFormatFix()")
