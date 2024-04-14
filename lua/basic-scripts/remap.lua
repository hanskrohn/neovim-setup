vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Open the file explorer"})

-- Remap for moving selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move the selected line or block of text one line down in visual mode"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move the selected line or block of text one line up in visual mode"})

-- Movement remap
vim.keymap.set("n", "J", "mzJ`z", {desc = "Join the current line with the line below it and restore the cursor position"})
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Scroll down half a page and center the cursor line in the window"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Scroll up half a page and center the cursor line in the window."})
vim.keymap.set("n", "n", "nzzzv", {desc = "Move to the next search match and center the cursor line in the window"})
vim.keymap.set("n", "N", "Nzzzv", {desc = "Move to the previous search match and center the cursor line in the window"})

-- Delete content and paste what is saved
vim.keymap.set("x", "<leader>p", [["_dP]], {desc = "Delete the selected text in visual mode and paste the contents of the default register"})

-- Copy to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], {desc = "Copy the selected text or the current line to the system clipboard"})
vim.keymap.set("n", "<leader>Y", [["+Y]], {desc = "Copy the current line to the system clipboard"})

-- Delete forever
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc = "Delete the selected text or the current line without saving it to a register"})

-- Greatest remap ever
vim.keymap.set("i", "<C-c>", "<Esc>", {desc = "Exit insert mode"})

vim.keymap.set("n", "Q", "<nop>", {desc = "Disable the Q command"})

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {desc = "Format the current buffer using the configured language server"})

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", {desc = "Next Quickfix"})
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", {desc = "Previous Quickfix"})
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", {desc = "Move to the next item in the location list and center the cursor line in the window"})
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", {desc = "Move to the previous item in the location list and center the cursor line in the window"})

-- Global change
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "Replace all occurrences of the word under the cursor with another word in the current buffe"})

vim.keymap.set({"n", "v"}, "<leader>w", ":vsp | wincmd l | lua vim.cmd('Ex')<CR>", { noremap = true, silent = true, desc = "Open a vertical split, move the cursor to the new window, and open the file explorer" })

-- Increase the Width of the current window
vim.api.nvim_set_keymap('n', '<leader>+',  '<C-w>>', { noremap = true, silent = true, desc = "Increase the width of the current window" })
vim.api.nvim_set_keymap('n', '<leader>=',  ':vertical resize +10<CR>', { noremap = true, silent = true, desc = "Increase the width of the current window by 10 columns" })

-- Decrease the height of the current window
vim.api.nvim_set_keymap('n', '<leader>_',  '<C-w><', { noremap = true, silent = true, desc = "Decrease the width of the current window." })
vim.api.nvim_set_keymap('n', '<leader>-',  ':vertical resize -10<CR>', { noremap = true, silent = true, desc = "Decrease the width of the current window by 10 columns" })
