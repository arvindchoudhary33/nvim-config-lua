local keymap = vim.keymap
-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement ( using + and - )
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backward ( using dw normal mode )
keymap.set('n', 'dw', 'vb"_d')

-- Select all ( using ctrl-a normal mode
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
--Move window
keymap.set('n', '<Space>', '<C-w>w') -- move to next split
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Reszie window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')



-- Move between panes ( like from nvim-tree to splits )
keymap.set('n', '<C-l>', '<C-w>l')
keymap.set('n', '<C-h>', '<C-w>h')


-- Transparent
keymap.set('n', '<C-t>', ':TransparentToggle<Return>')
