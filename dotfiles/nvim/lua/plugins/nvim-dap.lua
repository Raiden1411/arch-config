vim.keymap.set("n", "<leader>dgt", function()
	require("dap-go").debug_test()
end, { desc = "Debug go test" })

vim.keymap.set("n", "<leader>dgl", function() end, { desc = "Debug last go test" })

vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })

vim.keymap.set("n", "<leader>dus", function()
	local widgets = require("dap.ui.widgets")
	local sidebar = widgets.sidebar(widgets.scopes)
	sidebar.open()
end, { desc = "Open debugging sidebar" })
