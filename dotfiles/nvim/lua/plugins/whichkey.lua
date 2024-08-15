local status, plugin = pcall(require, "which-key")
if not status then
  print("Error with plugin: ", plugin)
  return
end

local util = get_utils()

plugin.setup({
  plugins = { spelling = true },
  key_labels = { ["<leader>"] = "SPC" },
  show_help = false,
  triggers = "auto",
})

plugin.register({
  mode = { "n", "v" },
  ["g"] = { name = "+goto" },
  ["+"] = { name = "+next" },
  ["ç"] = { name = "+prev" },
  ["<leader>"] = {
    a = {
      name = "+harpoon",
    },
    b = {
      name = "+buffer",
    },
    c = { name = "+code" },
    d = { name = "+debug", g = { name = "+go" }, u = { name = "+ui" } },
    f = {
      name = "+file",
      n = { "<cmd>enew<cr>", "New File" },
    },
    g = {
      name = "+git",
      h = { name = "+hunk" },
      c = { name = "+commit/checkout" },
      p = { name = "+push/pull", l = "+pull", s = "+push" },
    },
    s = { name = "+search" },
    t = {
      name = "toggle",
      g = { name = "git" },
      n = {
        function()
          util.toggle("relativenumber", true)
          util.toggle("number")
        end,
        "Line Numbers",
      },
      s = {
        function()
          util.toggle("spell")
        end,
        "Spelling",
      },
      w = {
        function()
          util.toggle("wrap")
        end,
        "Word Wrap",
      },
    },
    q = { "<cmd>q<cr>", "which_key_ignore", silent = true },
    Q = { "<cmd>q!<cr>", "which_key_ignore", silent = true },
    w = { "<cmd>w<cr>", "which_key_ignore", silent = true },
    x = { name = "+diagnostics" },
  },
})
