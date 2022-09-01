local status, nvimTree = pcall(require, 'nvim-tree')
if (not status) then return end


nvimTree.setup({
  sort_by = "case_sensitive",
  sync_root_with_cwd = true,
  open_on_tab = true,
  open_on_setup = false,
  view = {
    adaptive_size = true,
    hide_root_folder = true,
    width = 60,
    mappings = {
      list = {
        -- { key = "", action = "dir_down" },
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

vim.keymap.set('n', '<leader>g', ':NvimTreeToggle<CR>', {})

vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
  pattern = "NvimTree_*",
  callback = function()
    local layout = vim.api.nvim_call_function("winlayout", {})
    if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree"
        and layout[3] == nil then vim.cmd("confirm quit") end
  end
})
