return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- Install parsers for these languages
      ensure_installed = {
        "css",
        "html",
        "java",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "ruby",
        "vim",
        "vimdoc",
        "yaml",
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      auto_install = true,

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    })
  end,
}
