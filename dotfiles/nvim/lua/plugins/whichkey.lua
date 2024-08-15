local status, plugin = pcall(require, "which-key")
if not status then
  print("Error with plugin: ", plugin)
  return
end

local util = get_utils()

plugin.setup({
  plugins = { spelling = true },
  replace = { ["<leader>"] = "SPC" },
  show_help = false,
  triggers = { "auto" },
})

plugin.add(
  {
    {
      mode = { "n", "v" },
      { "+",           group = "next" },
      { "<leader>Q",   "<cmd>q!<cr>",            hidden = true },
      { "<leader>a",   group = "harpoon" },
      { "<leader>b",   group = "buffer" },
      { "<leader>c",   group = "code" },
      { "<leader>d",   group = "debug" },
      { "<leader>dg",  group = "go" },
      { "<leader>du",  group = "ui" },
      { "<leader>f",   group = "file" },
      { "<leader>fn",  "<cmd>enew<cr>",          desc = "New File" },
      { "<leader>g",   group = "git" },
      { "<leader>gc",  group = "commit/checkout" },
      { "<leader>gh",  group = "hunk" },
      { "<leader>gp",  group = "push/pull" },
      { "<leader>gpl", desc = "+pull" },
      { "<leader>gps", desc = "+push" },
      { "<leader>q",   "<cmd>q<cr>",             hidden = true },
      { "<leader>s",   group = "search" },
      { "<leader>t",   group = "toggle" },
      { "<leader>tg",  group = "git" },
      {
        "<leader>tn",
        function()
          util.toggle("relativenumber", true)
          util.toggle("number")
        end,
        desc = "Line Numbers"
      },
      {
        "<leader>ts",
        function()
          util.toggle("spell")
        end,
        desc = "Spelling"
      },
      {
        "<leader>tw",
        function()
          util.toggle("wrap")
        end,
        desc = "Word Wrap"
      },
      { "<leader>w", "<cmd>w<cr>",         hidden = true },
      { "<leader>x", group = "diagnostics" },
      { "g",         group = "goto" },
      { "ç",         group = "prev" },
    },
  }
)
