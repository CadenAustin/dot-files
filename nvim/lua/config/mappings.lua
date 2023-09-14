-- Leader Key
vim.g.mapleader = ' '

-- Write File in Normal Mode
vim.keymap.set('n', '<Leader>w', ':write<CR>', { noremap = true, silent = true, desc = 'Write File' })

-- Write to System Clipboard
vim.keymap.set({ "n", "v" }, "<Leader>y", '"+y', { noremap = true, silent = true, desc = 'Write to Clipboard' })

--Neo Git
vim.keymap.set('n', '<leader>ng', ':Neogit<CR>', { noremap = true, desc = 'Neogit' })
