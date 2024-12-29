return { 
	"hrsh7th/nvim-cmp"
	, name = "nvim-cmp"
	, opts = {
		sources = {
			{ name = 'nvim_lsp'}
			, { name = 'buffer' }
			, { name = 'path' }
			, { name = 'nvim_lsp_signature_help' }
		},
		snippet = {
			expand = function(args)
				vim.snippet.expand(args.body)
				end,
		},
	},
	dependencies = {
		"neovim/nvim-lspconfig"
		, "hrsh7th/cmp-nvim-lsp"
		, "hrsh7th/cmp-buffer"
		, "hrsh7th/cmp-path"
		, "hrsh7th/cmp-cmdline"
		, "hrsh7th/cmp-nvim-lsp-signature-help"
		, "hrsh7th/cmp-nvim-lua"
	},
	config = function ()
	local cmp = require('cmp')
	cmp.mapping = cmp.mapping.preset.insert({})
	end
}
