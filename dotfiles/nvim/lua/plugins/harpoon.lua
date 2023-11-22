local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>aa", mark.add_file, { desc = "Add file to harpoon" })
vim.keymap.set("n", "<leader>ae", ui.toggle_quick_menu, { desc = "Open harpoon menu" })

vim.keymap.set("n", "<leader>ah", function() ui.nav_file(1) end, { desc = "navigate to First pinned member" })
vim.keymap.set("n", "<leader>aj", function() ui.nav_file(2) end, { desc = "navigate to Second pinned member" })
vim.keymap.set("n", "<leader>ak", function() ui.nav_file(3) end, { desc = "navigate to Thrid pinned member" })
vim.keymap.set("n", "<leader>al", function() ui.nav_file(4) end, { desc = "navigate to Fourth pinned member" })
