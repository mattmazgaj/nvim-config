return {
	"williamboman/mason-lspconfig.nvim"
	,
	name = "mason-lspconfig"
	,
	opts = {
		ensure_installed = { "lua_ls", "gopls", "csharp_ls", "sqls", "cmake" }
	},
	dependencies = { "mason" }
}
