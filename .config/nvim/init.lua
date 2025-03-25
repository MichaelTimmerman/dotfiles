-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- somehow plugins are not loaded
require("plugins.neo-tree")
require("plugins.example")

local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = { "mustache" },
  callback = function()
    if vim.fn.expand("%:e") == "tpl" then
      vim.bo.filetype = "helm"
    end
  end,
})
