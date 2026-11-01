vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
  pattern = { "*.*" },
  callback = function()
    vim.cmd([[silent! mkview]])
  end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.*" },
  callback = function()
    vim.cmd([[silent! loadview]])
  end,
})
