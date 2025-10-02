return {

  { "goolord/alpha-nvim", enabled = false },
  {
    "echasnovski/mini.starter",
    opts = function()
      local logo = table.concat({
        "███╗   ███╗ █████╗ ███╗   ██╗ ██████╗  ██████╗ ███╗   ███╗ █████╗ ███╗   ██╗",
        "████╗ ████║██╔══██╗████╗  ██║██╔════╝ ██╔═══██╗████╗ ████║██╔══██╗████╗  ██║",
        "██╔████╔██║███████║██╔██╗ ██║██║  ███╗██║   ██║██╔████╔██║███████║██╔██╗ ██║",
        "██║╚██╔╝██║██╔══██║██║╚██╗██║██║   ██║██║   ██║██║╚██╔╝██║██╔══██║██║╚██╗██║",
        "██║ ╚═╝ ██║██║  ██║██║ ╚████║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║██║  ██║██║ ╚████║",
        "╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝",
      }, "\n")
      local starter = require("mini.starter")
      local config = {
        evaluate_single = true,
        header = logo,
        items = {
          { name = "f", action = "lua require('telescope.builtin').find_files()", section = "Telescope" },
          { name = "r", action = "lua require('telescope.builtin').oldfiles()", section = "Telescope" },
          { name = "g", action = "lua require('telescope.builtin').live_grep()", section = "Telescope" },
          { name = "c", action = "e $MYVIMRC", section = "Config" },
          { name = "s", action = "lua require('persistence').load()", section = "Session" },
          { name = "l", action = "Lazy", section = "Config" },
          { name = "n", action = "ene | startinsert", section = "Built-in" },
          { name = "q", action = "qa", section = "Built-in" },
        },
        content_hooks = {
          starter.gen_hook.adding_bullet("", false),
          starter.gen_hook.aligning("center", "center"),
        },
      }
      return config
    end,
  },
  {
    "rcarriga/nvim-notify",
    enabled = false,
    opts = {
      timeout = 5000,
    },
  },

  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        section_separators = { left = "", right = "" },
      },
    },
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },

}
