return {
"catppuccin/nvim"
	, name = "catppuccin"
	, priority = 1000
	, config = function()
		require('catppuccin').setup({
			flavour = "mocha"
			, transparent_background = false
			, dim_inactive = {
				enabled = true
			},
			color_overrides = {
				all = {
					base = "#000000"
				}
			}
		})
		vim.cmd.colorscheme "catppuccin"
		end
}
