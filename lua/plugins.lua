local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- ColorSchemes ( Themes)
  use 'luisiacc/gruvbox-baby'
  use "savq/melange"
  use "rebelot/kanagawa.nvim"
  use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  --[[ use "lukas-reineke/indent-blankline.nvim" ]]

  --[[ git diff view ]]
  ---- Packer
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  use "williamboman/nvim-lsp-installer" -- Lsp server installer


  use 'xiyaowong/nvim-transparent' -- Transparent bg

  use 'numToStr/Comment.nvim' -- Commenting ( gc | gb)
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'kkharji/lspsaga.nvim'

  use { 'kyazdani42/nvim-tree.lua' } -- nerdTree like

  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  -- Highlight todo fix et cetera
  use "folke/todo-comments.nvim"
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use { 'nvim-telescope/telescope.nvim' }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'

  --[[ use({ ]]
  --[[   "iamcco/markdown-preview.nvim", ]]
  --[[   run = function() vim.fn["mkdp#util#install"]() end, ]]
  --[[ }) ]]
  --[[ use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", ]]
  --[[   setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, }) ]]

  use 'akinsho/nvim-bufferline.lua'
  use 'akinsho/toggleterm.nvim'

  use 'lewis6991/gitsigns.nvim'

  -- Formatting
end)
