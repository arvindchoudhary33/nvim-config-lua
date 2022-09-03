local status, toggleTerm = pcall(require, 'toggleterm')
if (not status) then return end


toggleTerm.setup {
  size = 20,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1,
  start_in_insert = true,
  persist_size = true,
  direction = 'float', -- other , horizontal, vertical, float, tab ( tab not very efficient)
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    -- like `size`, width and height can be a number or function which is passed the current terminal
    -- width = <value>,
    -- height = <value>,
    -- winblend = 3,
    border = 'curved',
    width = 50,
    height = 30,
  },
  highlights = {
    -- highlights which map to a highlight group name and a table of it's values
    -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
    Normal = {
      -- guibg = "<VALUE-HERE>",
    },
    NormalFloat = {
      link = 'Normal'
    },
    FloatBorder = {

      guifg = '#EBC06D',
      -- guibg = '#EBC06D',
    },
  },

}


function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)

end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
