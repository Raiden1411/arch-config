local indent = 2

vim.g.mapleader = " "
vim.opt.guicursor = ""
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.autoindent = true                 -- Good auto indent
vim.opt.clipboard = "unnamed,unnamedplus" -- Use clipboard for all operations
vim.opt.cursorline = true                 -- Highlight current line
vim.opt.expandtab = true                  -- Expand tabs into spaces
vim.opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.foldcolumn = "0"
vim.opt.hidden = true                  -- Handle multiple buffers better
vim.opt.mouse = ""                     -- Disable mouse
vim.opt.number = true                  -- Show line numbers
vim.opt.relativenumber = true          -- Line numbers relative to cursor
vim.opt.scrolloff = 4                  -- Always show at least four lines above/below cursor
vim.opt.shiftround = true              -- Round indent
vim.opt.shiftwidth = indent            -- Size of an indent
vim.opt.shortmess = "Iac"              -- Disable start up message and abbreviate items
vim.opt.showbreak = "↪"
vim.opt.showmode = false               -- Hide redundant mode
vim.opt.sidescrolloff = 4              -- Always show at least four columns left/right cursor
vim.opt.signcolumn = "yes"             -- Always show the signcolumn
vim.opt.smartcase = true               -- Switch to case-sensitive search for capital letters
vim.opt.smartindent = true
vim.opt.splitbelow = true              -- Put new windows below current
vim.opt.splitright = true              -- Put new windows right of current
vim.opt.swapfile = false               -- Disable swapfiles
vim.opt.tabstop = indent               -- Number of spaces tabs count for
vim.opt.termguicolors = true           -- Support for true color (https://github.com/termstandard/colors)
vim.opt.title = true                   -- Set terminal title
vim.opt.updatetime = 200               -- Faster update time
vim.opt.visualbell = true              -- Disable beeping
vim.opt.wildmode = "longest:full,full" -- Completion settings

-- Use proper syntax highlighting in code blocks
local fences = {
  "console=sh",
  "javascript",
  "js=javascript",
  "json",
  "lua",
  "python",
  "sh",
  "shell=sh",
  "ts=typescript",
  "typescript",
}
vim.g.markdown_fenced_languages = fences
vim.g.markdown_recommended_style = 0

-- When using fish, set shell to bash
if vim.env.SHELL:match("fish$") then
  vim.opt.shell = "/bin/bash"
end

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    --------------------------------------------------------------------------
    -- Commands
    --------------------------------------------------------------------------

    -- Switch between relative and absolute line numbers based on mode
    local number_toggle = vim.api.nvim_create_augroup("number_toggle", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "WinEnter" }, {
      callback = function()
        if vim.opt.number:get() == true then
          vim.opt.relativenumber = true
        end
      end,
      group = number_toggle,
    })
    vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "WinLeave" }, {
      callback = function()
        if vim.opt.number:get() == true then
          vim.opt.relativenumber = false
        end
      end,
      group = number_toggle,
    })

    -- Highlight on yank
    vim.api.nvim_create_autocmd("TextYankPost", {
      callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 500 })
      end,
    })

    --------------------------------------------------------------------------
    -- Keymaps
    --------------------------------------------------------------------------

    vim.o.timeoutlen = 300

    local opts = { noremap = true, silent = true }
    vim.g.mapleader = " "

    -- Remove highlights
    vim.keymap.set("n", "<CR>", ":noh<CR><CR>", opts)

    -- Disable arrow keys
    vim.keymap.set("", "<down>", "<nop>", opts)
    vim.keymap.set("", "<left>", "<nop>", opts)
    vim.keymap.set("", "<right>", "<nop>", opts)
    vim.keymap.set("", "<up>", "<nop>", opts)

    -- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
    vim.keymap.set("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
    vim.keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
    vim.keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
    vim.keymap.set("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
    vim.keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
    vim.keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
  end,
})

