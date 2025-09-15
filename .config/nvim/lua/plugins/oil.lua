return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
    { "<leader>oh", function() vim.cmd('split'); require('oil').open() end, desc = "Oil horizontal split" },
    { "<leader>ov", function() vim.cmd('vsplit'); require('oil').open() end, desc = "Oil vertical split" },
  },
}
