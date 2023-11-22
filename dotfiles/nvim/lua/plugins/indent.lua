local status, plugin = pcall(require, 'indent_blankline')
if not status then
    print('Error with plugin: ', plugin)
    return
end
plugin.setup {
    filetype_exclude = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
    },
}