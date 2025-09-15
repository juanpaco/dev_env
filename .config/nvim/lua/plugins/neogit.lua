return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",        -- Optional but recommended for diff view
    "nvim-telescope/telescope.nvim", -- Optional for telescope integration
  },
  keys = {
    { "<leader>gs", "<cmd>Neogit<cr>", desc = "Git status (Neogit)" },
  },
  config = function()
    require("neogit").setup({
      -- Disable signs in the gutter
      signs = {
        hunk = { "", "" },
        item = { "", "" },
        section = { "", "" },
      },
      -- Integration with other tools
      integrations = {
        telescope = true,
        diffview = true,
      },
      -- Use default mappings
      mappings = {
        popup = {
          ["p"] = "PullPopup",
          ["P"] = "PushPopup",
          ["c"] = "CommitPopup",
          ["l"] = "LogPopup",
          ["z"] = "StashPopup",
        },
      },
    })
  end,
}