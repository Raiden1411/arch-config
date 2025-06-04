local icons = get_icons()

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "biome",
    "ansiblels"
  },
})


local servers = {
  biome = {},
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = {
            "after_each",
            "assert",
            "before_each",
            "describe",
            "it",
            "require",
            "use",
            "vim",
          },
        },
        format = {
          enable = true,
          defaultConfig = {
            indent_style = "space",
            indent_size = "2",
            continuation_indent_size = "2",
          },
        },
      },
    },
  },
  zls = {
    settings = {
      name = "zls",
      cmd = { "zls" },
      filetypes = { ".zig", ".zon" },
      warn_style = true,
      enable_inlay_hints = true,
      enable_snippets = false,
    },
  },
  ansiblels = {
    single_file_support = true
  },
  superhtml = {}
}

vim.diagnostic.config({
  underline = true,
  update_in_insert = false,
  virtual_text = { spacing = 4, prefix = "●" },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = icons.diagnostics.Error,
      [vim.diagnostic.severity.HINT] = icons.diagnostics.Hint,
      [vim.diagnostic.severity.INFO] = icons.diagnostics.Info,
      [vim.diagnostic.severity.WARN] = icons.diagnostics.Warn,
    },
  },
  severity_sort = true,
  float = {
    header = false,
    border = 'rounded',
    focusable = true
  }
})

local lsp = {}

lsp.autoformat = true
function lsp.toggle_format()
  lsp.autoformat = not lsp.autoformat
  vim.notify(lsp.autoformat and "Enabled format on save" or "Disabled format on save")
end

function lsp._format()
  if vim.lsp.buf.format then
    vim.lsp.buf.format()
  else
    vim.lsp.buf.formatting_sync()
  end
end

function lsp.setup_format(client, buf)
  local ft = vim.api.nvim_buf_get_option(buf, "filetype")
  local sources = require("null-ls.sources")
  local available = sources.get_available(ft, "NULL_LS_FORMATTING")
  local has_formatter = #available > 0

  local enable = false
  if has_formatter then
    enable = client.name == "null-ls"
  else
    enable = not (client.name == "null-ls")
  end

  if client.name == "tsserver" then
    enable = false
  end

  client.server_capabilities.documentFormattingProvider = enable
  if enable then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("LspFormat." .. buf, {}),
      buffer = buf,
      callback = function()
        if lsp.autoformat then
          lsp._format()
        end
      end,
    })
  end
end

function lsp.setup_keymaps(client, buffer)
  local wk = require("which-key")
  local cap = client.server_capabilities

  local keymap = {
    buffer = buffer,
    ["<leader>"] = {
      c = {
        name = "+code",
        {
          cond = client.name == "tsserver",
          o = { "<cmd>:TypescriptOrganizeImports<cr>", "Organize Imports" },
          R = { "<cmd>:TypescriptRenameFile<cr>", "Rename File" },
        },
        r = {
          function()
            require("inc_rename").setup({
              input_buffer_type = "dressing",
            })
            return ":IncRename " .. vim.fn.expand("<cword>")
          end,
          "Rename",
          cond = cap.renameProvider,
          expr = true,
        },
        a = {
          { vim.lsp.buf.code_action,                  "Code Action" },
          { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action", mode = "v" },
        },
        f = {
          {
            lsp._format,
            "Format Document",
            cond = cap.documentFormatting,
          },
          {
            lsp._format,
            "Format Range",
            cond = cap.documentRangeFormatting,
            mode = "v",
          },
        },
        d = { vim.diagnostic.open_float, "Line Diagnostics" },
        l = {
          name = "+lsp",
          i = { "<cmd>LspInfo<cr>", "Lsp Info" },
          a = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add Folder" },
          r = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove Folder" },
          l = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", "List Folders" },
        },
      },
      t = {
        f = {
          lsp.toggle_format,
          "Format on Save",
        },
      },
    },
    g = {
      name = "+goto",
      d = { "<cmd>Telescope lsp_definitions<cr>", "Goto Definition" },
      r = { "<cmd>Telescope lsp_references<cr>", "References" },
      R = { "<cmd>Trouble lsp_references<cr>", "Trouble References" },
      D = { "<cmd>Telescope lsp_declarations<cr>", "Goto Declaration" },
      I = { "<cmd>Telescope lsp_implementations<cr>", "Goto Implementation" },
      t = { "<cmd>Telescope lsp_type_definitions<cr>", "Goto Type Definition" },
    },
    ["K"] = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
    ["<C-,>"] = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help", mode = { "n", "i" } },
    ["+d"] = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Next Diagnostic" },
    ["çd"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Prev Diagnostic" },
    ["+e"] = { "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<cr>", "Next Error" },
    ["çe"] = { "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<cr>", "Prev Error" },
    ["+w"] = {
      "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.WARNING})<cr>",
      "Next Warning",
    },
    ["çw"] = {
      "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.WARNING})<cr>",
      "Prev Warning",
    },
  }

  wk.register(keymap)
end

local capabilities =
    require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

local function on_attach(client, bufnr)
  lsp.setup_format(client, bufnr)
  lsp.setup_keymaps(client, bufnr)
end

-- LSP settings (for overriding per client)
local handlers = {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded' }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded' }),
}

local options = {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  handlers = handlers,
}

for server, opts in pairs(servers) do
  opts = vim.tbl_deep_extend("force", {}, options, opts or {})
  require("lspconfig")[server].setup(opts)
end

-- Setup null-ls
local nls = require("null-ls")
nls.setup({
  debounce = 150,
  save_after_format = false,
  sources = {
    nls.builtins.formatting.biome,
    nls.builtins.formatting.fish_indent,
  },
  on_attach = on_attach,
})
