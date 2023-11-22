local status, plugin = pcall(require,'nvim-autopairs')
if not status then
    print('Error with plugin: ', plugin)
    return
end

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>", {desc = "Document Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>xX", "<cmd>TroubleToggle workspace_diagnostics<cr>", {desc = "Workspace Diagnostics (Trouble)" })


plugin.setup({ use_diagnostic_signs = true })