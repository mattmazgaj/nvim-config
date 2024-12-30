return {
	"neovim/nvim-lspconfig"
	, name = "nvim-lspconfig"
	, dependencies = { "mason-lspconfig", "saghen/blink.cmp" }
	, opts = {
		autoformat = true
	}
	, config = function()
		local lspconfig = require('lspconfig')
		local capabilities = require('blink.cmp').get_lsp_capabilities()

		lspconfig.lua_ls.setup{
			capabilities = capabilities
		}

		lspconfig.clangd.setup{
			cmd = {
				"clangd"
				, "--background-index"
				, "--clang-tidy"
				, "--header-insertion=iwyu"
				, "--completion-style=detailed"
				, "--function-arg-placeholders"
				, "--fallback-style=llvm"
			}
			, capabilities = capabilities
			, on_attach = require('lsp-format').on_attach
		}
end
}
