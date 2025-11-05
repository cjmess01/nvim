vim.keymap.set("n","<leader>w", "<cmd>w<CR>", {silent = true})
vim.keymap.set("n","<leader>q", "<cmd>q<CR>", {silent = true})
vim.keymap.set("n","<leader>wq", "<cmd>wq<CR>", {silent = true})

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- go to error list
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")

-- clear highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true})

-- leave insert mode
vim.keymap.set("i", "jj", "<esc>")


-- Move stuff in visual mode by block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


-- greatest remap ever
-- Basically over write text when in visual mode kinda
vim.keymap.set("x", "<leader>p", [["_dP]])


-- Window Stuff
-- Open horizontal and vertical splits
vim.keymap.set("n", "<leader>sh", ":split<CR>", { silent = true })
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { silent = true })


-- Adds vscode esque indenting, while keeping the group
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Resize splits
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { silent = true })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", { silent = true })

-- Switch between windows
vim.keymap.set("n", "<leader>t", "<C-w>w", { silent = true })
