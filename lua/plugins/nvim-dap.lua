return
{
	"mfussenegger/nvim-dap"
	,
	name = "nvim-dap"
	,
	config = function()
		local dap = require('dap')
		local ui = require('dapui')


		vim.keymap.set('n', '<Leader>b', dap.toggle_breakpoint)
		vim.keymap.set('n', '<F5>', dap.continue)
		vim.keymap.set('n', '<F10>', dap.step_over)
		vim.keymap.set('n', '<F11>', dap.step_into)
		vim.keymap.set('n', '<F12>', dap.step_out)

		vim.keymap.set("n", "<space>?", function() ui.eval(nil, { enter = true }) end)

		dap.adapters.cppdbg = {
			id = 'cppdbg',
			type = 'executable',
			command = 'C:\\cpptools\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe',
			options = {
				detached = false
			}
		}

		dap.configurations.c = {
			{
				name = "Launch (CPPDBG)",
				type = "cppdbg",
				request = "launch",
				program = function()
					local hasDebug = 0
					local cwd = vim.fn.getcwd()
					local pfile = io.popen('ls -a "' .. cwd .. '"')
					for filename in pfile:lines() do
						local f = string.match(filename, "debug$")
						if f ~= nil then
							hasDebug = 1
							break
						end
					end
					pfile:close()

					if hasDebug == 0 then
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/',
							'file')
					end

					pfile = io.popen('ls -a "' .. cwd .. '"/debug/*.exe')
					local exe = nil
					for filename in pfile:lines() do
						if string.find(filename, '.exe$') then
							exe = filename
							break
						end
					end

					if exe ~= nil then
						return vim.fn.input('Path to executable: ', exe, 'file')
					end

					return vim.fn.input('Path to executable: ', cwd .. '/debug/', 'file')
				end,
				cwd = '${workspaceFolder}',
				stopAtEntry = true,
			},
		}
	end
}
