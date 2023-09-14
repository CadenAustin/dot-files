return {
	{
		'sbdchd/neoformat',
		config = function()
			vim.keymap.set('n', '<leader>fm', ':Neoformat<CR>', { silent = true, noremap = true, desc = 'Neo-Format' })
			vim.g.neoformat_try_node_exe = 1
		end,
	}
}
