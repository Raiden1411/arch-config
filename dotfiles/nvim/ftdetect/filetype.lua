vim.filetype.add({
  pattern = {
    ['.*%/tasks/.*%.yml'] = 'yaml.ansible',
    ['.*%/.*%.zon'] = 'zig',
    [".*/hypr/.*%.conf"] = "hyprlang",
    ['.*%/.*%.mdx'] = 'mdx',
  }
})
