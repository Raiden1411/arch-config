local util = get_utils()
local opts = {
  multi_line = true,
  highlight = "Type",
}

local twoslash_queries = require("twoslash-queries")
twoslash_queries.setup(opts)
-- attach whenever tsserver attaches
util.on_attach(function(client, bufnr)
  if client.name == "tsserver" then
    require("twoslash-queries").attach(client, bufnr)
    vim.keymap.set(
      "n",
      "<C-K>",
      "<cmd>TwoslashQueriesInspect<CR>",
      { desc = "twoslash inspect variable under the cursor" }
    )
  end
end)
