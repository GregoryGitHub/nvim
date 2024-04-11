-- Customize Mason plugins

---@type LazySpec
return {
	{
		"Joakker/lua-json5",
		--
		-- Precisa ir na pasta do plugin e executar o ./install.sh para instalar
		-- .local/share/nvim/lazy/lua-json5/
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap", "Joakker/lua-json5" },
		config = function()
			local dap = require("dap")
			-- local extVscode = require("dap.ext.vscode")
			-- extVscode.json_decode = require("json5").parse

			dap.adapters.cs = {
				type = "executable",
				command = "netcoredbg",
				args = { "--interpreter=vscode" },
			}

			-- dap.configurations.cs = extVscode.load_launchjs("${workspaceFolder}/.vscode/launch.json")

			-- 	dap.configurations.cs = {
			-- 		{
			-- 			type = "cs",
			-- 			name = "Launch Current File",
			-- 			request = "launch",
			-- 			program = function()
			-- 				return vim.fn.expand("%:p")
			-- 			end,
			-- 			-- cwd = "${workspaceFolder}",
			-- 			-- env = {
			-- 			-- 	ASPNETCORE_ENVIRONMENT = "Development",
			-- 			-- },
			-- 		},
			-- 	}
		end,
	},
	{
		"NicholasMata/nvim-dap-cs",
		dependencies = { "mfussenegger/nvim-dap" },
		config = function()
			require("dap-cs").setup({
				-- Additional dap configurations can be added.
				-- dap_configurations accepts a list of tables where each entry
				-- represents a dap configuration. For more details do:
				-- :help dap-configuration
				dap_configurations = {
					{
						-- Must be "coreclr" or it will be ignored by the plugin
						type = "coreclr",
						name = "Attach remote",
						mode = "remote",
						request = "attach",
					},
				},
				netcoredbg = {
					-- the path to the executable netcoredbg which will be used for debugging.
					-- by default, this is the "netcoredbg" executable on your PATH.
					path = "netcoredbg",
				},
			})
		end,
	},
}
