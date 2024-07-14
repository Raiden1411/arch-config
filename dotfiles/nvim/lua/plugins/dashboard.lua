local status, plugin = pcall(require, 'dashboard')
if not status then
  print('Error with plugin: ', plugin)
  return
end

plugin.setup({
  theme = 'doom',
  config = {
    header = randomheader(),
    center = {
      {
        icon = '  ',
        desc = 'Find File                           ',
        desc_hl = 'String',
        key = 'f',
        keymap = 'SPC ff',
        key_hl = 'Number',
        action = 'Telescope find_files'
      },
      {
        icon = '  ',
        desc = 'Find Text                           ',
        desc_hl = 'String',
        key = 'g',
        keymap = 'SPC fg',
        key_hl = 'Number',
        action = 'Telescope live_grep'
      },
      {
        icon = '  ',
        desc = 'File Browser                        ',
        desc_hl = 'String',
        key = 'Dash',
        keymap = '-',
        key_hl = 'Number',
        action = 'Oil'
      },
      {
        icon = '󰚰  ',
        desc = 'Update                              ',
        desc_hl = 'String',
        key = 'u',
        keymap = ':Lazy update',
        key_hl = 'Number',
        action = 'Lazy update'
      },
      {
        icon = '󱓥  ',
        desc = 'Edit Neovim                         ',
        desc_hl = 'String',
        key = 'c',
        keymap = 'SPC en',
        key_hl = 'Number',
        action = 'lua edit_nvim()' -- Declared in utils.lua
      },

    },
    footer = {
      randomquote()
    }
  }
})
