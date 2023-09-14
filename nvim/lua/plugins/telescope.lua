return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		dependencies = { 'nvim-lua/plenary.nvim' },
		init = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find Using Grep' })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffer' })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find Help Tags' })
		end,
	},
	{
		'nvim-telescope/telescope-file-browser.nvim',
		dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
		init = function()
			require('telescope').load_extension('file_browser')
			vim.keymap.set('n', '<leader>fe', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', { noremap = true, desc = 'Telescope File Browser' })	
		end,
	},
}
