--[[ local status, packer = pcall(require, "packer") ]]
--[[ if (not status) then ]]
--[[   print("Packer is not installed") ]]
--[[   return ]]
--[[ end ]]
--[[]]
--[[ --[[ vim.cmd [[packadd packer.nvim]]

--[[ packer.startup(function(use) ]]
--#region
--#region
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'wbthomason/packer.nvim',
  -- ColorSchemes ( Themes)
  'luisiacc/gruvbox-baby',
  "savq/melange",
  "rebelot/kanagawa.nvim",
  'folke/tokyonight.nvim',
  { "catppuccin/nvim", as = "catppuccin" },
  --[[ use "lukas-reineke/indent-blankline.nvim" ]]

  --[[ git diff view ]]
  ---- Packer
  { 'sindrets/diffview.nvim', dependencies = { { 'nvim-lua/plenary.nvim' } } },

  "williamboman/nvim-lsp-installer", -- Lsp server installer


  "xiyaowong/nvim-transparent", -- Transparent bg

  'numToStr/Comment.nvim', -- Commenting ( gc | gb)
  'JoosepAlviste/nvim-ts-context-commentstring',

  'nvim-lualine/lualine.nvim', -- Statusline
  'nvim-lua/plenary.nvim', -- Common utilities
  'onsails/lspkind-nvim', -- vscode-like pictograms
  'hrsh7th/cmp-buffer', -- nvim-cmp source for buffer words
  'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim's built-in LSP
  'hrsh7th/nvim-cmp', -- Completion
  'neovim/nvim-lspconfig', -- LSP
  'jose-elias-alvarez/null-ls.nvim', -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  'MunifTanjim/prettier.nvim', -- Prettier plugin for Neovim's built-in LSP client
  'kkharji/lspsaga.nvim',

  { 'kyazdani42/nvim-tree.lua' }, -- nerdTree like

  'L3MON4D3/LuaSnip',
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  },
  -- Highlight todo fix et cetera,
  "folke/todo-comments.nvim",
  'kyazdani42/nvim-web-devicons', -- File icons
  { 'nvim-telescope/telescope.nvim' },
  'nvim-telescope/telescope-file-browser.nvim',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  'norcalli/nvim-colorizer.lua',

  --[[   "iamcco/markdown-preview.nvim", ]]
  --[[   run = function() vim.fn["mkdp#util#install"]() end, ]]
  --[[ }) ]]
  --[[ use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", ]]
  --[[   setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, }) ]]

  'akinsho/nvim-bufferline.lua',
  'akinsho/toggleterm.nvim',

  'lewis6991/gitsigns.nvim',
}
local opts = {}

require("lazy").setup(plugins, opts)
