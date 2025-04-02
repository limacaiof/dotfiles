vim.api.nvim_create_autocmd("FileType", {
    pattern = {"javascript", "typescript"},
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
        vim.bo.softtabstop = 2
    end,
})
