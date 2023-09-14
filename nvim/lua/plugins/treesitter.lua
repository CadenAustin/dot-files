return {
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		config = function()
			require('nvim-treesitter.configs').setup({
				auto_install = true,
				ensure_installed = {
					'rust',
					'c',
					'cpp',
					'python',
					'lua',
					'vim',
					'vimdoc',
					'comment',
				},
				highlight = { enable = true },
				indent = { enable = true },
				autotag = { enable = true },
			})
		end,
	},
}
