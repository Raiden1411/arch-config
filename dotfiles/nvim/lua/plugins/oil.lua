local status, plugin = pcall(require, "oil")
if not status then
	print("Error with plugin: ", plugin)
	return
end
plugin.setup({})
