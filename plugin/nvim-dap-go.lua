return {
	"leoluz/nvim-dap-go",
	config = function()
		require('dap-go').setup {
			delve = {
				initialize_timeoutsec = 120
			}
		}
	end
}
