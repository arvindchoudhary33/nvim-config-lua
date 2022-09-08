require("gitsigns").setup({
  -- ...
  yadm = { enable = vim.fn.executable("yadm") == 1 },
})
