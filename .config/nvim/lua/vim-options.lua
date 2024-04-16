vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "
vim.o.termguicolors = true

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', { desc = "Move to window above"})
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', { desc = "Move to window below"})
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', { desc = "Move to window left"})
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', { desc = "Move to window right"})

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
