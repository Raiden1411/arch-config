vim.treesitter.language.register("zig", "zon")

require("nvim-treesitter.configs").setup({
  autopairs = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  ensure_installed = {
    "bash",
    "css",
    "fish",
    "gitignore",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "regex",
    "tsx",
    "typescript",
    "zig",
    "go",
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = false,
  },
})

vim.treesitter.language.register("markdown", "mdx")
