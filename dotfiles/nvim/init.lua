--- All Core Files ---
vim.cmd("runtime! lua/core/utils.lua")
vim.cmd("runtime! lua/core/*.lua")

--- All  Other Plugins ---
vim.cmd("runtime! lua/plugins/lspconfig.lua")
vim.cmd("runtime! lua/plugins/*.lua")
vim.cmd("runtime! lua/plugins/lualine.lua")
