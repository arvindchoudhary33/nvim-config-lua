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

local transparency_enabled = true
vim.keymap.set("n", "<leader>tt", function()
  transparency_enabled = not transparency_enabled
  
  local colorscheme = vim.g.colors_name or "default"
  
  if colorscheme == "catppuccin" then
    require("catppuccin").setup({ transparent_background = transparency_enabled })
    vim.cmd.colorscheme("catppuccin")
  elseif colorscheme == "gruvbox" then
    require("gruvbox").setup({ transparent_mode = transparency_enabled })
    vim.cmd.colorscheme("gruvbox")
  elseif colorscheme == "kanagawa" then
    require("kanagawa").setup({ transparent = transparency_enabled })
    vim.cmd.colorscheme("kanagawa")
  elseif colorscheme == "bamboo" then
    require("bamboo").setup({ transparent = transparency_enabled })
    vim.cmd.colorscheme("bamboo")
  elseif colorscheme == "cyberdream" then
    require("cyberdream").setup({ transparent = transparency_enabled })
    vim.cmd.colorscheme("cyberdream")
  elseif colorscheme == "rose-pine" then
    require("rose-pine").setup({ styles = { transparency = transparency_enabled } })
    vim.cmd.colorscheme("rose-pine")
  elseif colorscheme == "solarized-osaka" then
    require("solarized-osaka").setup({ transparent = transparency_enabled })
    vim.cmd.colorscheme("solarized-osaka")
  elseif colorscheme == "tokyonight" then
    require("tokyonight").setup({ transparent = transparency_enabled })
    vim.cmd.colorscheme("tokyonight")
  else
    vim.notify("Transparency toggle not supported for " .. colorscheme, vim.log.levels.WARN)
  end
  
  vim.notify("Transparency " .. (transparency_enabled and "enabled" or "disabled"))
end, { desc = "Toggle transparency" })
