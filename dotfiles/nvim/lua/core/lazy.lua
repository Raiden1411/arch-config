local util = get_utils()

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
    print([[
        No plugins????
        ⠀⣞⢽⢪⢣⢣⢣⢫⡺⡵⣝⡮⣗⢷⢽⢽⢽⣮⡷⡽⣜⣜⢮⢺⣜⢷⢽⢝⡽⣝
        ⠸⡸⠜⠕⠕⠁⢁⢇⢏⢽⢺⣪⡳⡝⣎⣏⢯⢞⡿⣟⣷⣳⢯⡷⣽⢽⢯⣳⣫⠇
        ⠀⠀⢀⢀⢄⢬⢪⡪⡎⣆⡈⠚⠜⠕⠇⠗⠝⢕⢯⢫⣞⣯⣿⣻⡽⣏⢗⣗⠏⠀
        ⠀⠪⡪⡪⣪⢪⢺⢸⢢⢓⢆⢤⢀⠀⠀⠀⠀⠈⢊⢞⡾⣿⡯⣏⢮⠷⠁⠀⠀
        ⠀⠀⠀⠈⠊⠆⡃⠕⢕⢇⢇⢇⢇⢇⢏⢎⢎⢆⢄⠀⢑⣽⣿⢝⠲⠉⠀⠀⠀⠀
        ⠀⠀⠀⠀⠀⡿⠂⠠⠀⡇⢇⠕⢈⣀⠀⠁⠡⠣⡣⡫⣂⣿⠯⢪⠰⠂⠀⠀⠀⠀
        ⠀⠀⠀⠀⡦⡙⡂⢀⢤⢣⠣⡈⣾⡃⠠⠄⠀⡄⢱⣌⣶⢏⢊⠂⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⠀⢝⡲⣜⡮⡏⢎⢌⢂⠙⠢⠐⢀⢘⢵⣽⣿⡿⠁⠁⠀⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⠀⠨⣺⡺⡕⡕⡱⡑⡆⡕⡅⡕⡜⡼⢽⡻⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⠀⣼⣳⣫⣾⣵⣗⡵⡱⡡⢣⢑⢕⢜⢕⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⣴⣿⣾⣿⣿⣿⡿⡽⡑⢌⠪⡢⡣⣣⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⡟⡾⣿⢿⢿⢵⣽⣾⣼⣘⢸⢸⣞⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ⠀⠀⠀⠀⠁⠇⠡⠩⡫⢿⣝⡻⡮⣒⢽⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ]]),
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {

  { "catppuccin/nvim",                 name = "catppuccin", priority = 1000 },
  { "luckasRanarison/tree-sitter-hypr" },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  "nvim-treesitter/nvim-treesitter-context",
  "numToStr/Comment.nvim",

  -- gitsigns.nvim (https://github.com/lewis6991/gitsigns.nvim)
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
  },

  -- LuaSnip (https://github.com/L3MON4D3/LuaSnip)
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
    keys = {
      {
        "<tab>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
      {
        "<tab>",
        function()
          require("luasnip").jump(1)
        end,
        mode = "s",
      },
      {
        "<s-tab>",
        function()
          require("luasnip").jump(-1)
        end,
        mode = { "i", "s" },
      },
    },
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  { "windwp/nvim-autopairs", event = "InsertEnter" },
  "ThePrimeagen/harpoon",
  "mbbill/undotree",

  -- lualine.nvim (https://github.com/nvim-lualine/lualine.nvim)
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
  },

  "tpope/vim-fugitive",

  -- nvim-cmp (https://github.com/hrsh7th/nvim-cmp)
  {
    "hrsh7th/nvim-cmp",
    event = "VeryLazy",
    dependencies = {
      -- https://github.com/hrsh7th/cmp-nvim-lsp
      "hrsh7th/cmp-nvim-lsp",
      -- https://github.com/hrsh7th/cmp-buffer
      "hrsh7th/cmp-buffer",
      -- https://github.com/hrsh7th/cmp-path
      "hrsh7th/cmp-path",
      -- https://github.com/saadparwaiz1/cmp_luasnip
      "saadparwaiz1/cmp_luasnip",
    },
  },

  -- nvim-lspconfig (https://github.com/neovim/nvim-lspconfig)
  {
    "neovim/nvim-lspconfig",
    name = "lsp",
    dependencies = {
      -- https://github.com/williamboman/mason.nvim
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      -- https://github.com/jose-elias-alvarez/null-ls.nvim
      "nvimtools/none-ls.nvim",
      -- https://github.com/smjonas/inc-rename.nvim
      "smjonas/inc-rename.nvim",
    },
  },

  -- nvim-treesitter (https://github.com/nvim-treesitter/nvim-treesitter)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      -- nvim-ts-autotag (https://github.com/windwp/nvim-ts-autotag)
      {
        "windwp/nvim-ts-autotag",
        opts = {},
      },
    },
  },

  -- telescope (https://github.com/nvim-telescope/telescope.nvim)
  {
    "nvim-telescope/telescope.nvim",
    cmd = { "Telescope" },
    dependencies = {
      -- Lua functions (https://github.com/nvim-lua/plenary.nvim)
      "nvim-lua/plenary.nvim",
      -- Pop up API (https://github.com/nvim-lua/popup.nvim)
      "nvim-lua/popup.nvim",
    },
  },

  -- trouble.nvim (https://github.com/folke/trouble.nvim)
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
  },

  -- twoslash-queries.nvim (https://github.com/marilari88/twoslash-queries.nvim)
  {
    "marilari88/twoslash-queries.nvim",
  },

  -- vim-tmux-navigator (https://github.com/christoomey/vim-tmux-navigator)
  {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
    config = function()
      vim.g.tmux_navigator_disable_when_zoomed = 1
      vim.g.tmux_navigator_save_on_switch = 2
      vim.g.VtrOrientation = "v"
      vim.g.VtrPercentage = 20
    end,
  },

  -- which-key (https://github.com/folke/which-key.nvim)
  { "folke/which-key.nvim",  event = "VeryLazy" },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  { "folke/neodev.nvim",    opts = {} },
  { "mfussenegger/nvim-dap" },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd([[silent! GoInstallDeps]])
    end,
  },
}
local opts = {}

require("lazy").setup(plugins, opts)
