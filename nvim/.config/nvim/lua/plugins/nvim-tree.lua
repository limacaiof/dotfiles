return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    config = function()
        vim.keymap.set(
            "n",
            "<C-n>",
            ":NvimTreeToggle <CR>",
            { desc = "Toggle File Tree", noremap = true, silent = true }
        )

        require("nvim-tree").setup({
            sync_root_with_cwd = true,
            view = {
                width = 35,
                side = "right",
            },
            renderer = {
                group_empty = false,
                root_folder_label = function(path)
                    return vim.fn.fnamemodify(path, ":t")
                end,
            },
            filters = {
                dotfiles = false,
                custom = { "^.git$" },
            },
            git = {
                ignore = false,
            },
        })
    end,
}
