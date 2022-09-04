local status, gruvboxBaby = pcall(require, 'gruvbox-baby')
if (not status) then return end
-- Enable transparent mode  for gruvbox-baby
vim.g.gruvbox_baby_transparent_mode = 1
