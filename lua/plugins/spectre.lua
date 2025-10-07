return {
  "nvim-pack/nvim-spectre",
  cmd = "Spectre",
  opts = { open_cmd = "noswapfile vnew" },
  keys = {
    { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
    { "<leader>sw", function() require("spectre").open_visual({select_word=true}) end, desc = "Search current word" },
    { "<leader>sp", function() require("spectre").open_file_search({select_word=true}) end, desc = "Search on current file" },
    { "<leader>sw", function() require("spectre").open_visual() end, mode = "v", desc = "Search current word" },
  },
}