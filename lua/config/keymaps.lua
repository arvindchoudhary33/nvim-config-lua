vim.keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, { desc = "Next Diagnostic" })

vim.keymap.set("n", "sv", "<C-w>v", { desc = "Split window vertically" })

vim.keymap.set("n", ";f", "<cmd>FzfLua files<cr>", { desc = "Find files" })
vim.keymap.set("n", ";r", "<cmd>FzfLua live_grep<cr>", { desc = "Live grep" })

vim.keymap.set("n", "gt", vim.cmd.tabnext, { desc = "Next tab" })
vim.keymap.set("n", "gT", vim.cmd.tabprevious, { desc = "Previous tab" })
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew, { desc = "New tab" })
vim.keymap.set("n", "<leader>tc", vim.cmd.tabclose, { desc = "Close tab" })
