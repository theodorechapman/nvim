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
