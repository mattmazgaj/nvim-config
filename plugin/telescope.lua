return {
	'nvim-telescope/telescope.nvim', 
	-- tag = '0.1.2',
	  branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config  = function()
		local builtin = require('telescope.builtin')

		vim.g.mapleader= " "
		vim.keymap.set('n', '<C-F>', builtin.find_files, {})
		vim.keymap.set('n', '<CS-F>', builtin.git_files, {})
		vim.keymap.set('n', '<Leader>fg', function()
			builtin.grep_string({search = vim.fn.input("Grep > ")});
		end)
	end

}
