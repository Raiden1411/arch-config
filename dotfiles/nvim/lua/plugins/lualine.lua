local status, plugin = pcall(require, 'lualine')
if not status then
  print('Error with plugin: ', plugin)
  return
end


local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
  end,
}

local icons = get_icons()

plugin.setup({
  options = {
    always_divide_middle = true,
    component_separators = "",
    disabled_filetypes = {
      "neo-tree",
    },
    globalstatus = false,
    icons_enabled = true,
    section_separators = "",
    theme = "auto",
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      "mode",
      {
        "filename",
        cond = conditions.buffer_not_empty,
        symbols = { modified = "", readonly = "", unnamed = "" },
      },
      {
        "branch",
        icon = "",
      },
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
        },
      },
    },
    lualine_x = {
      {
        "diff",
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          removed = icons.git.removed,
        },
      },
      {
        require('noice').api.statusline.mode.get,
        cond = require('noice').api.statusline.mode.has,
        color = { fg = "#ff9e64" },
      },
      "filetype",
      "progress",
      "location",
    },
    lualine_y = {},
    lualine_z = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})

