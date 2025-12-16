-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


--Use a vertical bar cursor in every mode
vim.opt.guicursor = "a:ver25"

--share clipboard between sys and vim
vim.opt.clipboard = "unnamedplus"

--'o' command doesn't open insert
vim.keymap.set("n", "o", "o<Esc>")
vim.keymap.set("n", "O", "O<Esc>")

--end of line stuff
vim.opt.virtualedit = "onemore"
vim.keymap.set('n', '$', '$l', { noremap = true, silent = true })
vim.keymap.set('n', 'a', 'A', { noremap = true, silent = true })

-- Prevent cursor from moving left when exiting insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    local col = vim.fn.col('.')
    local line_len = vim.fn.col('$') - 1
    if col < line_len then
      vim.cmd('normal! l')
    end
  end
})
