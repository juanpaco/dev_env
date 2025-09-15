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
