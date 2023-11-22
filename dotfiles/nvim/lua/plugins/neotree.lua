local status, plugin = pcall(require, 'neo-tree')
if not status then
    print('Error with plugin: ', plugin)
    return
end

vim.g.neo_tree_remove_legacy_commands = 1

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", {desc = "Toggle Explorer" })
vim.keymap.set("n", "<leader>fs", "<cmd>Neotree focus<cr>", {desc = "Focus File in Explorer" })

plugin.setup {
    default_component_configs = {
        indent = { with_markers = false },
        modified = {
            symbol = "●",
        },
    },
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
        },
        follow_current_file = {
            enabled = true
        },
        hijack_netrw_behavior = "open_current",
    },
    window = {
        width = 30,
    },
}