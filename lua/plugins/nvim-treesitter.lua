return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "go", "c_sharp", "bash", "sql", "lua", "gitignore", "dockerfile", "c", "arduino", "cpp", "cmake", "json", "ini", "odin", "regex", "xml", "csv" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	}
}
