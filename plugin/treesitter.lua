return {
	{"nvim-treesitter/nvim-treesitter",
	build= ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
		ensure_installed = {"go", "c_sharp", "rust","bash","toml","sql","ocaml","lua","javascript","html","gitignore","dockerfile","c","arduino","cpp","css"},
		sync_install = false,
		highlight = {enable = true },
		indent = {enable = true},
		})
	end
	
	}
}
