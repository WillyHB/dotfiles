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
     require('lspconfig')['csharp_ls'].setup {capabilities = capabilities}
     require('lspconfig')['clangd'].setup {capabilities = capabilities}
     require('lspconfig')['bashls'].setup {capabilities = capabilities}
     require('lspconfig')['lua_ls'].setup {capabilities = capabilities}
     require('lspconfig')['dockerls'].setup {capabilities = capabilities}
     require('lspconfig')['cmake'].setup {capabilities = capabilities}
     require('lspconfig')['html'].setup {capabilities = capabilities}
     require('lspconfig')['cssls'].setup {capabilities = capabilities}
     require('lspconfig')['ts_ls'].setup {capabilities = capabilities}
     require('lspconfig')['ast_grep'].setup {capabilities = capabilities}
     require('lspconfig')['rust_analyzer'].setup {capabilities = capabilities}
        end,
    }
}
