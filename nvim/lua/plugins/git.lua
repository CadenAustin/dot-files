return {
	{
		'NeogitOrg/neogit',
		dependencies = {
			'nvim-lua/plenary.nvim',         -- required
			'nvim-telescope/telescope.nvim', -- optional
			'sindrets/diffview.nvim',        -- optional
			'ibhagwan/fzf-lua',              -- optional
		},
		cmd = 'Neogit',
		config = function()
			require('neogit').setup({
				kind = 'split',
				signs = {
					section = { '', '' },
					item = { '', '' },
					hunk = { '', '' },
				},
				integrations = { diffview = true }
			})
			vim.keymap.set('n', '<leader>gh', ':Neogit<CR>', { desc = 'Neogit' })
		end,
	},
	{
		'sindrets/diffview.nvim',
		cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles' },
	},
}
