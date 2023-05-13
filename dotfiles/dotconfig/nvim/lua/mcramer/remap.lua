vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- append line underneath
vim.keymap.set("n", "J", "mzJ`z")

-- selecting vim panes
vim.keymap.set({"n", "i"}, "<C-H>", "<C-W><C-H>")
vim.keymap.set({"n", "i"}, "<C-N>", "<C-W><C-J>")
vim.keymap.set({"n", "i"}, "<C-E>", "<C-W><C-K>")
vim.keymap.set({"n", "i"}, "<C-I>", "<C-W><C-L>")

-- moving vim panes
vim.keymap.set({"n", "i"}, "<C-W><S-H>", "<C-W><S-H>")
vim.keymap.set({"n", "i"}, "<C-W><S-N>", "<C-W><S-J>")
vim.keymap.set({"n", "i"}, "<C-W><S-E>", "<C-W><S-K>")
vim.keymap.set({"n", "i"}, "<C-W><S-I>", "<C-W><S-L>")

-- move visual chunk
vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")

-- keep cursor centered for half-page scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor centered for searching
vim.keymap.set("n", "k", "nzzzv")
vim.keymap.set("n", "K", "Nzzzv")

-- substitute word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
