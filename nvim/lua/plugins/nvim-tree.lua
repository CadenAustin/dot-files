return {
	{
		'nvim-tree/nvim-tree.lua',
		lazy = true,
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		init = function()
			require('nvim-tree').setup()
			vim.keymap.set('n', '<leader>tt', ':NvimTreeFindFileToggle<CR>', { desc = 'Toggle File Tree' })
			vim.keymap.set('n', '<leader>to', ':NvimTreeOpen<CR>', { desc = 'Open File Tree' })
			vim.keymap.set('n', '<leader>tc', ':NvimTreeClose<CR>', { desc = 'Close File Tree' })
			vim.keymap.set('n', '<leader>tf', ':NvimTreeFocus<CR>', { desc = 'Focus File Tree' })
		end,
	}
}
