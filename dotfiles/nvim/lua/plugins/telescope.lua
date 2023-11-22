local status, plugin = pcall(require, "telescope")
if not status then
	print("Error with plugin: ", plugin)
	return
end

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
vim.keymap.set(
	"n",
	"<leader>fB",
	"<cmd>Telescope buffers show_all_buffers=true<cr>",
	{ desc = "Find Buffers (Show All)" }
)
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find Recent Files" })
vim.keymap.set("n", "<leader>gcl", builtin.git_commits, { desc = "List commits" })
vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Branches" })
vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Status" })
vim.keymap.set("n", "<leader>si", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Interactive grep" })
vim.keymap.set("n", "<leader>sb", builtin.current_buffer_fuzzy_find, { desc = "Buffer" })
vim.keymap.set("n", "<leader>sc", builtin.command_history, { desc = "Command History" })
vim.keymap.set("n", "<leader>sC", builtin.commands, { desc = "Commands" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Grep" })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Help Pages" })
vim.keymap.set("n", "<leader>sH", builtin.highlights, { desc = "Highlight Groups" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "Key Maps" })
vim.keymap.set("n", "<leader>sM", builtin.man_pages, { desc = "Man Pages" })
vim.keymap.set("n", "<leader>so", builtin.vim_options, { desc = "Options" })
vim.keymap.set("n", "<leader>ss", function()
	require("telescope.builtin").lsp_document_symbols({
		symbols = {
			"Class",
			"Function",
			"Method",
			"Constructor",
			"Interface",
			"Module",
			"Struct",
			"Trait",
			"Field",
			"Property",
		},
	})
end, { desc = "Goto Symbol" })

plugin.setup({
	defaults = {
		border = true,
		borderchars = {
			prompt = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
			results = { "─", "│", "─", "│", "├", "┤", "╯", "╰" },
			preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		},
		mappings = {
			i = {
				["<C-i>"] = function()
					require("telescope.builtin").find_files({ no_ignore = true })
				end,
				["<C-j>"] = function(...)
					require("telescope.actions").move_selection_next(...)
				end,
				["<C-k>"] = function(...)
					require("telescope.actions").move_selection_previous(...)
				end,
			},
		},
		layout_strategy = "center",
		layout_config = {
			height = function(_, _, max_lines)
				return math.min(max_lines, 15)
			end,
			preview_cutoff = 1,
			width = function(_, max_columns, _)
				return math.min(max_columns, 80)
			end,
		},
		prompt_prefix = "❯ ",
		results_title = false,
		selection_caret = "→ ",
		sorting_strategy = "ascending",
	},
	pickers = {
		find_files = {
			hidden = true,
			file_ignore_patterns = { ".git/", ".undo/", ".backup/" },
		},
	},
})
