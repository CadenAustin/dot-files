return {
	{
		'phaazon/hop.nvim',
		config = function()
			require('hop').setup()
			vim.keymap.set('n', '<leader>ha', ':HopAnywhere<CR>', { desc = 'Hop Anywhere'})
			vim.keymap.set('n', '<leader>hw', ':HopWord<CR>', { desc = 'Hop Word'})
			vim.keymap.set('n', '<leader>hc', ':HopChar1<CR>', { desc = 'Hop Character'})
			vim.keymap.set('n', '<leader>hp', ':HopPattern<CR>', { desc = 'Hop Pattern'})
		end,
	}
}
