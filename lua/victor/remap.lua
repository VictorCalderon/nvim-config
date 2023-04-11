vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pm", "<cmd>NvimTreeToggle<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste from the other registry
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete and throw to the other registry
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- Format this buffer using the lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Go to next and previous error
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Same thing but for lines maybe?
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- What is this thing
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Go to packer
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/victor/packer.lua<CR>");

-- Open a floating terminal window
vim.keymap.set("n", "<leader>term", "<cmd>FloatermNew --title=Bash --width=0.8<CR>")
vim.keymap.set("n", "<leader>cargob", "<cmd>FloatermNew! --title='Cargo-Build' --width=0.8 cargo build<CR>")
vim.keymap.set("n", "<leader>pnpmb", "<cmd>FloatermNew! --title='PNPM-Build' --width=0.8 pnpm run build<CR>")

-- Sometimes life is just too hard
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>");
