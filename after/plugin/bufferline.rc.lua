-- https://unicode-table.com/en/  for unicode characters and symbols
local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs", -- options , buffers, tabs
    numbers = "none",
    -- separator_style = "thin", -- default
    separator_style = { "", "" }, -- custom seperator
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true,
    indicator = {
      -- icon = '▎',
      -- icon = " 》",
      icon = " 〉",
      -- icon = '', -- this should be omitted if indicator style is not 'icon'
      style = 'icon', -- 'icon' | 'underline' | 'none',
    },

    offsets = {
      {
        filetype = "NvimTree",
        text = "Hey there,",
        -- text = function()
        --   return vim.fn.getcwd()
        -- end,
        highlight = "Directory",
        text_align = "left",
        separator = false,
        padding = 1


      }
    },
  },
  highlights = {
    indicator_selected = {
      fg = '#b8bb26',
      -- bg = ''
    },
    buffer_selected = {
      -- fg = '#fdf6e3',
      -- bg = '#282828',
      bold = false,
      italic = false,
    },
    --
    -- background = { -- Unselected buffer
    -- fg = 'yellow',
    -- bg = '#282828'
    -- },
    fill = {
      -- bg = '#352F2A' --  for melange colorscheme
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
