vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Block up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Block up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Append line bellow. Keep cursor at start" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page jump. Keep cursor in the middle" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page jump. Keep cursor in the middle" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Search terms stay in the middle" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Search terms stay in the middle" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste vim clipboard but keep system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank to system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>D", [["_d]], { desc = "Delete to void register" })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open new project" })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set({ 'n', 'v' }, "<leader>zg", "<cmd>terminal zig build -Dapp-runtime=glfw<CR>",
  { desc = "Ghostty build glfw" })
vim.keymap.set({ 'n', 'v' }, "<leader>zk", "<cmd>terminal zig build -Dgtk-libadwaita=false<CR>",
  { desc = "Ghostty build gtk" })
vim.keymap.set({ 'n', 'v' }, "<leader>bq", "<cmd>bdelete<CR>", { desc = "Delete current buffer" })
vim.keymap.set(
  "n",
  "<leader>S",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace current word" }
)
vim.keymap.set("n", "<leader>R", function()
  vim.cmd("redraw!")
end, { desc = "Reload current buffer" })

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end, { desc = "Source current file." })

vim.keymap.set("n", "<C-s>", function()
  vim.cmd("w")
end, { desc = "Save file" })

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    --------------------------------------------------------------------------
    -- Commands
    --------------------------------------------------------------------------
    vim.g.mapleader = " "
    -- Switch between relative and absolute line numbers based on mode
    local number_toggle = vim.api.nvim_create_augroup("number_toggle", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "WinEnter" }, {
      callback = function()
        if vim.opt.number:get() == true then
          vim.opt.relativenumber = true
        end
      end,
      group = number_toggle,
    })
    vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "WinLeave" }, {
      callback = function()
        if vim.opt.number:get() == true then
          vim.opt.relativenumber = false
        end
      end,
      group = number_toggle,
    })

    -- Highlight on yank
    vim.api.nvim_create_autocmd("TextYankPost", {
      callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 500 })
      end,
    })

    --------------------------------------------------------------------------
    -- Keymaps
    --------------------------------------------------------------------------

    vim.o.timeoutlen = 300

    local opts = { noremap = true, silent = true }

    -- Replay macro
    vim.keymap.set("n", "Q", "@q", opts)

    -- Remove highlights
    vim.keymap.set("n", "<CR>", ":noh<CR><CR>", opts)

    -- Disable arrow keys
    vim.keymap.set("", "<down>", "<nop>", opts)
    vim.keymap.set("", "<left>", "<nop>", opts)
    vim.keymap.set("", "<right>", "<nop>", opts)
    vim.keymap.set("", "<up>", "<nop>", opts)

    -- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
    -- vim.keymap.set("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
    vim.keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
    vim.keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
    -- vim.keymap.set("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
    vim.keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
    vim.keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
  end,
})
