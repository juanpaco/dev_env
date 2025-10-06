vim.cmd.colorscheme("nano-theme")

vim.opt.number = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.smarttab = true

vim.opt.autoindent = true -- Even though Tree-sitter does it better, set this in case language-specific indentation isn't available
vim.opt.copyindent = true -- Even though Tree-sitter does it better, set this in case language-specific indentation isn't available

vim.opt.visualbell = true
vim.opt.errorbells = false

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.showmatch = true

vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.history = 1000
vim.opt.undolevels = 1000

vim.opt.wildignore = {
  "*.o", "*.obj", "*.bin", "*.exe",     -- Compiled files
  "*.so", "*.dll", "*.pyc",             -- Binary/compiled
  "*.swp", "*.swo", "*~",               -- Temp/backup files
  ".git/*", ".hg/*", ".svn/*",          -- Version control
  "node_modules/*", "__pycache__/*",    -- Dependencies/cache
  "*.jpg", "*.png", "*.gif",            -- Images
  ".DS_Store", "Thumbs.db",             -- OS files
}

-- Strip trailing whitespace and fix newlines on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    -- Strip trailing whitespace
    vim.cmd([[%s/\s\+$//e]])
    -- Reduce 3+ consecutive newlines to 2 newlines (one blank line)
    vim.cmd([[%s/\n\n\n\+/\r\r/e]])
    -- Remove all trailing newlines and add exactly one
    vim.cmd([[%s/\n\+\%$//e]])
    vim.cmd([[s/\%$//e]])
    vim.cmd([[normal! Go]])
    vim.fn.setpos(".", save_cursor)
  end,
})

-- Remove dot from Ruby indentkeys to prevent unwanted deindentation when typing method calls
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "ruby" },
  callback = function()
    vim.opt_local.indentkeys:remove(".")
  end,
})

