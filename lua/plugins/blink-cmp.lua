return
{
	'saghen/blink.cmp'
	, pendencies = 'rafamadriz/friendly-snippets'
	, version = 'v0.8.2'
	, opts = {
		keymap = { preset = 'default' }
		, appearance = {
			use_nvim_cmp_as_default = true
			, nerd_font_variant = 'mono'
		}
		, sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
			},
		}
	, opts_extend = { "sources.default" }
}
