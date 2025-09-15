return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  config = function()
    vim.opt.foldcolumn = "1"          -- Show fold column
    vim.opt.foldlevel = 99            -- High fold level
    vim.opt.foldlevelstart = 99       -- Start with folds open
    vim.opt.foldenable = true         -- Enable folding

    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return {"treesitter", "indent"}  -- Use treesitter, fallback to indent
      end
    })
  end,
}