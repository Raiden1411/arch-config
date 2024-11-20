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
    colors.error = "#b22222"
    colors.bg_dark = "#0f1111"
    colors.bg = "#0f1111"
  end,

  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(hl, colors)
    hl.Type = {
      fg = "#069494",
    }
    hl.Function = {
      fg = "#E35336",
    }
    hl.Constant = {
      fg = "#DCA1A1",
    }
    hl.Include = {
      fg = "#77F7F7",
    }
    hl.String = {
      fg = "#81bf3f"
    }
    hl["@keyword"] = {
      fg = "#a0304f",
    }
    hl["@function.builtin"] = {
      fg = "#E35336",
    }
    hl["@lsp.type.variable"] = {
      fg = "#DCD7BA",
    }
    hl["@lsp.type.parameter"] = {
      fg = "#fb9435",
    }
    -- hl.TelescopePromptNormal = {
    --   bg = prompt,
    -- }
    -- hl.TelescopePromptBorder = {
    --   bg = prompt,
    --   fg = prompt,
    -- }
    -- hl.TelescopePromptTitle = {
    --   bg = prompt,
    --   fg = prompt,
    -- }
  end,
})

vim.cmd.colorscheme("tokyonight-night")
