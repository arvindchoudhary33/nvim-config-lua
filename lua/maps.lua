local keymap = vim.keymap
-- No macro recording
vim.cmd [[map q <Nop>]]
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
keymap.set('n', 'ss', ':split<Return>', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return>', { silent = true })

--Move window
-- keymap.set('n', '<Space>', '<C-w>w') -- move to next split
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Reszie window
keymap.set('n', '<Space>', '<C-w>')
keymap.set('n', '<Space><Space>', '<C-w>=')
keymap.set('n', 'rr', '<C-w>5<')
keymap.set('n', 'ww', '<C-w>5>')
-- keymap.set('n', '<C-w><left>', '<C-w><')
-- keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')



-- Move between panes ( like from nvim-tree to splits )
keymap.set('n', '<C-l>', '<C-w>l')
keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')



-- Transparent
keymap.set('n', 'tt', ':TransparentToggle<Return>')


-- Remove highlight after pressing Esc
keymap.set('n', '<Esc>', ':noh<Return>', { silent = true })
