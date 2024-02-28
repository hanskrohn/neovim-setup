vim.g.mapleader = " "

-- View folder
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Remap for moving selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Movement Remap
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete content and paste what is saved
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete forever
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- The most logical thing ever
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- Format code
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Location list navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Global Change
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Vertical split screen
vim.keymap.set({"n", "v"}, "<leader>w", ":vsp | wincmd l | lua vim.cmd('Ex')<CR>", { noremap = true, silent = true })

-- Increase the Width of the current window
vim.api.nvim_set_keymap('n', '<leader>+',  '<C-w>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>=',  ':vertical resize +10<CR>', { noremap = true, silent = true })

-- Decrease the height of the current window
vim.api.nvim_set_keymap('n', '<leader>_',  '<C-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>-',  ':vertical resize -10<CR>', { noremap = true, silent = true })
