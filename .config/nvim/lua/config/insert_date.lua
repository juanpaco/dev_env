local function insert_date()
  local date = os.date("%a %b %-d %Y")
  -- For systems that don't support %-d (like some non-GNU date implementations)
  date = date:gsub(" 0", " ")
  vim.api.nvim_put({date}, "c", true, true)
end

-- Keymap: <leader>id (insert date)
vim.keymap.set("n", "<leader>id", insert_date, { desc = "Insert current date" })
vim.keymap.set("i", "<C-g>d", insert_date, { desc = "Insert current date" })

