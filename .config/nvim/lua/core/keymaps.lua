local CONFIG_PATH = vim.fn.stdpath('config')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- shortcut to open neovim configuration
vim.keymap.set('n', '<leader>vc', '<cmd>e ' .. CONFIG_PATH .. '<CR>', { desc = 'open neovim configuration' })

-- exit with space q q
vim.keymap.set('n', '<leader>qq', '<cmd>q<CR>', { desc = '[q]uit vim' })

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', { desc = 'TODO: set description' })

-- keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', { desc = 'TODO: set description' })

-- vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'TODO: set description' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'TODO: set description' })

-- find and center
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'find next' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'find previous' })

-- buffer navigation
vim.keymap.set('n', 'L', '<cmd>bnext<CR>', { desc = 'switch to next buffer' })
vim.keymap.set('n', 'H', '<cmd>bprevious<CR>', { desc = 'switch to previous buffer' })
vim.keymap.set('n', '<leader>x', '<cmd>bdelete!<CR>', { desc = 'close buffer' })
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', { desc = 'close buffer' })

-- window management
vim.keymap.set('n', '<leader>v', '<C-w>v', { desc = 'split window vertical' })
vim.keymap.set('n', '<leader>s', '<C-w>s', { desc = 'split window horizontal' })
vim.keymap.set('n', '<leader>c', '<C-w>c', { desc = '[c]lose window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'switch focus to window above' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'switch focus to window below' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'switch focus to window left' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'switch focus to window right' })

-- diagnostic kemaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'View diagnostic at cursor' })
