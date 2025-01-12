require("tokyonight").setup({
  style = "night",
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    sidebars = "dark",
    floats = "dark",
  },
  hide_inactive_statusline = false,
  lualine_bold = true,

  ---@param colors ColorScheme
  on_colors = function(colors)
  end,

  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(hl, colors)
    hl.Include = {
      fg = "#77F7F7",
    }
    hl.String = {
      fg = "#81bf3f"
    }
    hl["@lsp.type.variable"] = {
      fg = "#f3f3f2",
    }
  end,
})

vim.cmd.colorscheme("tokyonight")
