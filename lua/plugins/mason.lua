-- Customize Mason plugins

---@type LazySpec
return {
	-- use mason-lspconfig to configure LSP installations
	{
		"williamboman/mason-lspconfig.nvim",
		-- overrides `require("mason-lspconfig").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
				"lua_ls",
				-- add more arguments for adding more language servers
			})
		end,
	},
	-- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
	{
		"jay-babu/mason-null-ls.nvim",
		-- overrides `require("mason-null-ls").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
				"prettier",
				"stylua",
				-- add more arguments for adding more null-ls sources
			})
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap" },
		config = function()
			local dap = require("dap")
			dap.adapters.netcoredbg = {
				type = "executable",
				command = "netcoredbg",
				args = { "--interpreter=vscode" },
			}

			dap.configurations.cs = {
				type = "netcoredbg",
				name = "Launch Current File",
				request = "launch",
				program = function()
					return vim.fn.expand("%:p")
				end,
				-- cwd = "${workspaceFolder}",
				-- stopAtEntry = false,
				-- console = "internalConsole",
				-- preLaunchTask = "build",
				-- env = {
				-- 	DOTNET_CLI_TELEMETRY_OPTOUT = "1",
				-- 		ASPNETCORE_ENVIRONMENT = "Development",
				-- 			ASPNETCORE_URLS = "http://localhost:5000",
				-- 				ASPNETCORE_HTTPS_PORT = "5001",
				--
			}
		end,
	},
	{
		"NicholasMata/nvim-dap-cs",
		dependencies = { "mfussenegger/nvim-dap" },
		config = function()
			require("dap-cs").setup({
				dap_configurations = {
					{
						type = "cs",
						name = "Launch Current File",
					},
				},
			})
		end,
	},
}
