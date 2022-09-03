local status, toggleTerm = pcall(require, 'toggleterm')
if (not status) then return end


toggleTerm.setup {
  size = 13,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1,
  start_in_insert = true,
  persist_size = true,
  direction = 'float'
}
