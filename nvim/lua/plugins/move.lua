return {
	{
		'fedepujol/move.nvim',
		config = function()
			vim.keymap.set('v', 'K', ':MoveBlock(-1)<CR>', { noremap = true, silent = true, desc = 'Move Block Up'})
			vim.keymap.set('v', 'J', ':MoveBlock(1)<CR>', { noremap = true, silent = true, desc = 'Move Block Down'})
		end,
	}
}
