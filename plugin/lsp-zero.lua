return {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v2.x',
	dependencies = {
		-- LSP Support
		{ 'neovim/nvim-lspconfig' }, -- Required
		{ 'williamboman/mason.nvim' }, -- Optional
		{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

		-- Autocompletion
		{ 'hrsh7th/nvim-cmp' }, -- Required
		{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
		{ 'L3MON4D3/LuaSnip' }, -- Required
		{ 'hrsh7th/cmp-buffer'},
		{ 'hrsh7th/cmp-path'},

	},
	config = function()
		local lsp = require('lsp-zero').preset({})
		lsp.manage_nvim_cmp = {
			set_basic_mappings = true
		}
		lsp.on_attach(function(client, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp.default_keymaps({ buffer = bufnr })
		end)

		-- (Optional) Configure lua language server for neovim
		require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

		lsp.setup()

		local cmp = require('cmp')
		cmp.sources = {
			{ name = 'nvim_lsp' },
			{ name = 'buffer' },
			{name = 'path'},
			{name = 'luasnip'},
		}
	end
}
