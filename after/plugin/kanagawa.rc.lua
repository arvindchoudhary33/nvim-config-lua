local status, kanagawaTheme = pcall(require, 'kanagawa')
--[[ local hlgroups              = require('kanagawa.hlgroups') ]]

if (not status) then return end
local colors = require('kanagawa.color')
local config = require("kanagawa").config


-- to have transparent telescope borders
local overrides = {
  --[[ TelescopeNormal = { bg = not config.transparent and colors.bg or 'NONE' }, ]]
  TelescopeBorder = { fg = not config.transparent and colors.sm or colors.fg_comment,
    bg = not config.transparent and colors.bg or 'NONE' },
  --[[ TelescopeResultsClass = { link = "TSType" }, ]]
  --[[ TelescopeResultsStruct = { link = "TSType" }, ]]
  --[[ TelescopeResultsVariable = { link = "TSVariable" }, ]]
  --[[ TelescopePromptNormal = { fg = colors.fg, bg = not config.transparent and colors.bg or 'NONE' }, ]]
  --[[ TelescopePromptBorder = { fg = not config.transparent and colors.sm or colors.fg_comment, ]]
  --[[   bg = not config.transparent and colors.bg or 'NONE' }, ]]
}
kanagawaTheme.setup({
  undercurl = true, -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  variablebuiltinStyle = { italic = true },
  specialReturn = true, -- special highlight for the return keyword
  specialException = true, -- special highlight for exception handling keywords
  transparent = false, -- do not set background color
  dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  globalStatus = false, -- adjust window separators highlight for laststatus=3
  terminalColors = true, -- define vim.g.terminal_color_{0,17}
  colors = {},
  overrides = overrides
  ,
  theme = "default" -- Load "default" theme or the experimental "light" theme
})
