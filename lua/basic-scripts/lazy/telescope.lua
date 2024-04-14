return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = "Find files in your project"})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = "Find files in your Git repository"})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, {desc = "Search for the word under the cursor in your project"})
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, {desc = "Search for the WORD (delimited by whitespace) under the cursor in your project"})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, {desc = "Prompt for a string and search for it in your project"})
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {desc = "Find and navigate to help tags"})
    end
}