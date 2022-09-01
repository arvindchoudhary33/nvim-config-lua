local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = { "│", "│" },
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,

    offsets = {
      {
        filetype = "NvimTree",
        text = function()
          return vim.fn.getcwd()
        end,
        highlight = "Directory",
        text_align = "left"
      }
    },
  },
  highlights = {
    separator = {
      fg = '#B16286',
      -- bg = '#282828',
    },
    separator_selected = {
      -- fg = '#8EC07C',
      -- bg = '#282828'
    },
    background = {
      -- fg = '#665C54',
      -- bg = '#282828'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bg = '#282828',
      bold = false,
      italic = false,
    },
    fill = {
      bg = '#282828'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
