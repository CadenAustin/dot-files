return {
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'simrat39/rust-tools.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		},
		config = function()
			local lsp = require('lsp-zero').preset({})

			lsp.on_attach(
				function(client, bufnr)
					lsp.default_keymaps({buffer = bufnr})
				end
			)

			require('mason').setup({})
			require('mason-lspconfig').setup({
				ensure_installed = {},
				handlers = {
					lsp.default_setup,
				},
			})

			lsp.setup()

			local rust_tools = require('rust-tools')

			rust_tools.setup({
				server = {
					on_attatch = function (_, bufnr)
						vim.keymap.set('n', '<leader>ca', rust_tools.hover_actions.hover_actions, {buffer = bufnr})
					end
				}
			})

			local cmp = require('cmp')
			local cmp_action = require('lsp-zero').cmp_action()

			cmp.setup({
				mapping = {
					['<CR>'] = cmp.mapping.confirm({select = false}),
					['<C-Space>'] = cmp.mapping.complete(),

					['<C-f>'] = cmp_action.luasnip_jump_forward(),
					['<C-b>'] = cmp_action.luasnip_jump_backward(),
				}
			})
		end,
	}
}
