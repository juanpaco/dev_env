return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",                    -- Matches your colorscheme automatically
        component_separators = "|",       -- Simple separator between components
        section_separators = "",          -- No fancy separators between sections
        globalstatus = false,             -- Individual status lines per window
        refresh = {
          statusline = 1000,              -- Refresh every 1000ms (1 second)
        },
      },
      sections = {
        -- Left side
        lualine_a = { "mode" },           -- Current mode (NORMAL, INSERT, etc.)
        lualine_b = { "branch" },         -- Git branch name
        lualine_c = {
          {
            "filename",
            path = 1,                     -- Show relative path from cwd
          },
          {
            "diagnostics",                -- LSP diagnostics (errors, warnings)
            sources = { "nvim_diagnostic" },
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " ",
            },
          },
        },
        -- Right side
        lualine_x = {
          "encoding",                     -- File encoding (utf-8, etc.)
          "fileformat",                   -- File format (unix, dos, mac)
          "filetype",                     -- File type (lua, javascript, etc.)
        },
        lualine_y = { "progress" },       -- Percentage through file (50%)
        lualine_z = { "location" },       -- Line:Column number
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            "filename",
            path = 1,                     -- Show relative path from cwd
          },
        },
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
    })
  end,
}
