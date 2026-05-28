return
{
	{
		"hrsh7th/cmp-nvim-lsp",
	},

	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require'cmp'

			--Adds luasnip vscode snippets
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
					end,
				},

				experimental =
				{
					ghost_text = true,
				},

				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
					['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
					['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
					['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
					['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' }, -- For luasnip users.
				}, {
					{ name = 'path'},
					{ name = 'buffer' },
				})
			})
			-- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
			-- Set configuration for specific filetype.
			--[[ cmp.setup.filetype('gitcommit', {
				sources = cmp.config.sources({
					{ name = 'git' },
				}, {
					{ name = 'buffer' },
				})
			})
			require("cmp_git").setup() ]]-- 

			-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline({ '/', '?' }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = 'buffer' }
				}
			})

			-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline(':', {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = 'path' }
				}, {
					{ name = 'cmdline' }
				}),
				matching = { disallow_symbol_nonprefix_matching = false }
			})

			--  -- Set up lspconfig.

			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			--  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
			vim.lsp.config('clangd', {
				capabilities = capabilities,
				cmd = {'clangd', '--background-index', '--clang-tidy'}
			})
			vim.lsp.enable('clangd')

			vim.lsp.config('bashls', {capabilities = capabilities})
			vim.lsp.enable('bashls')

			vim.lsp.config('lua_ls', {capabilities = capabilities})
			vim.lsp.enable('lua_ls')

			vim.lsp.config('dockerls', {capabilities = capabilities})
			vim.lsp.enable('dockerls')

			vim.lsp.config('cmake', {capabilities = capabilities})
			vim.lsp.enable('cmake')
			
			vim.lsp.config('html', {capabilities = capabilities})
			vim.lsp.enable('html')
			
			vim.lsp.config('cssls', {capabilities = capabilities})
			vim.lsp.enable('cssls')

			vim.lsp.config('ts_ls', {capabilities = capabilities})
			vim.lsp.enable('ts_ls')

			vim.lsp.config('ast_grep', {capabilities = capabilities})
			vim.lsp.enable('ast_grep')

			vim.lsp.config('rust_analyzer', {capabilities = capabilities})
			vim.lsp.enable('rust_analyzer')

			vim.lsp.config('gdscript', { capabilities = capabilities })
			vim.lsp.enable('gdscript')
		end,
	}
}
