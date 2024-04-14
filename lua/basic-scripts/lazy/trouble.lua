return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icons = false,
            })

            vim.keymap.set("n", "<leader>tt", function()
                require("trouble").toggle()
            end, {desc = "Toggle the trouble list"})

            vim.keymap.set("n", "[t", function()
                require("trouble").next({skip_groups = true, jump = true});
            end, {desc = "Jump to the next trouble item"})

            vim.keymap.set("n", "]t", function()
                require("trouble").previous({skip_groups = true, jump = true});
            end, {desc = "Jump to the previous trouble item"})
        end
    },
}