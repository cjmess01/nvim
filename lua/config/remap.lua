vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")

vim.keymap.set("i", "jj", "<esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.keymap.set("n", "<C-u>", "<C-u>zz")


-- greatest remap ever
-- Basically over write text when in visual mode kinda
vim.keymap.set("x", "<leader>p", [["_dP]])


-- Adds vscode esque indenting, while keeping the group
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- vim.keymap.set("v", "<leader>g0", "di)<esc>Pi(<esc>v", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>(", "di(<esc>pa)<esc>v%", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>[", "di[<esc>pa]<esc>v%", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>{", "di{<esc>pa}<esc>v%", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>\"", "di\"<esc>pa\"<esc>vF\"", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>\'", "di\'<esc>pa\'<esc>vF\'", { noremap = true, silent = true })

