vim.keymap.set("n", "<leader>gg", vim.cmd.Git, { desc = "Git UI" })
vim.keymap.set("n", "<leader>ga", ":G add<Space>", { desc = "Add" })
vim.keymap.set("n", "<leader>gm", ":G merge<Space>", { desc = "Merge" })
vim.keymap.set("n", "<leader>gpll", ":G pull<Space>", { desc = "Pull" })
vim.keymap.set("n", "<leader>gplo", ":G pull origin<Space>", { desc = "Pull <branch>" })
vim.keymap.set("n", "<leader>gpss", ":G push<Space>", { desc = "Push" })
vim.keymap.set("n", "<leader>gpso", ":G push origin<Space>", { desc = "Push <branch>" })
vim.keymap.set("n", "<leader>gcc", ":G commit<Space>", { desc = "Commit" })
vim.keymap.set("n", "<leader>gcm", ":G commit -m<Space>", { desc = "Commit <message>" })
vim.keymap.set("n", "<leader>gch", ":G checkout<Space>", { desc = "Checkout <branch>" })
vim.keymap.set("n", "<leader>gcb", ":G checkout -b<Space>", { desc = "Checkout & create <branch>" })
