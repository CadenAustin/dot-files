return {
	{
		'rebelot/kanagawa.nvim'
	},
	{
		'nvim-lualine/lualine.nvim',
		init = function()
			require('lualine').setup()
		end,
	},
	{
		'akinsho/bufferline.nvim',
		init = function()
			require('bufferline').setup()
		end,
	}
}
