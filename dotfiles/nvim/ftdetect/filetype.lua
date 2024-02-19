vim.filetype.add({
  pattern = {
    ['.*%/tasks/.*%.yml'] = 'yaml.ansible',
    ['.*%/.*%.zon'] = 'zig',
    ['.*%/hypr/.*%.conf'] = 'hypr',
    ['.*%/.*%.mdx'] = 'mdx',
  }
})
