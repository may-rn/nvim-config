return {
	'williamboman/mason.nvim',
	lazy = false,
	dependencies = {
		'williamboman/mason-lspconfig.nvim',
		'WhoIsSethDaniel/mason-tool-installer.nvim',
	},
	config = function()
		require('mason').setup({
			ui = {
				icons = {
					package_installed = '',
					package_pending = '',
					package_uninstalled = '',
				},
			},
		})

		require('mason-lspconfig').setup({
			ensure_installed = {
				'lua_ls',
				'rust_analyzer',
				'gopls',
				'clangd',
				'jedi_language_server',
				'tsserver',
				'svelte',
				'html',
				'cssls',
				'emmet_language_server',
				'vuels',
			},
		})

		require('mason-tool-installer').setup({
			ensure_installed = {
				'stylua',
				'goimports',
				'prettierd',
				'ruff',
				'prettier',
				'isort',
				'shfmt',
			},
			run_on_Start = true,
			start_delay = 200,
		})
	end,
}
