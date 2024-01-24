vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- greatest remap ever, Delete and no yank, hehe
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "vd", [["_dd]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- prettier

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/vahab/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- Buffer managment
vim.keymap.set("n", "<leader>be", ":enew")         -- Open new equal buffer
vim.keymap.set("n", "<leader>bd", ":bd")           -- Close current buffer
--vim.keymap.set("n", "<leader>ba", "bufdo bd<cr>")  -- Close all buffers
--vim.keymap.set("n", "<leader>l", ":bnext<cr>")     -- Close current buffer
--vim.keymap.set("n", "<leader>h", ":bprevious<cr>") -- Close current buffer


-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")         -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s")         -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=")         -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split window
