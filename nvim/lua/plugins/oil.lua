return {
	'stevearc/oil.nvim',
	opts = {},
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('oil').setup()
		vim.keymap.set('n', '<leader>oo', function()
			vim.cmd('vsplit | wincmd l')
			require('oil').open()
		end, { desc = 'Open Oil to the Left' })
	end,
}
