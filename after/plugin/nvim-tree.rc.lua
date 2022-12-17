local status, nvimTree = pcall(require, 'nvim-tree')
if (not status) then return end

nvimTree.setup({
  -- Disable all keybindings for nvim-tree because using telescope file-browser to do the same
  remove_keymaps = true,

  sort_by = "case_sensitive",
  sync_root_with_cwd = true,
  open_on_tab = true,
  open_on_setup = false,
  view = {
    adaptive_size = true,
    hide_root_folder = false,
    width = 47,
    mappings = {
      list = {
        { key = "l", action = "dir_down" },
        --[[ { key = "h", action = "dir_up" }, ]]
        { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
        -- Backspace or 'o' to close the opened node
        { key = "<BS>", action = "close_node" },
        { key = { "cd" }, action = "cd" },
        { key = "I", action = "toggle_dotfiles" },
        { key = "p", action = "parent_node" },
        { key = "R", action = "refresh" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<leader>g', ':NvimTreeToggle<CR>', { silent = true })
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
  pattern = "NvimTree_*",
  callback = function()
    local layout = vim.api.nvim_call_function("winlayout", {})
    if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree"
        and layout[3] == nil then vim.cmd("confirm quit") end
  end
})
