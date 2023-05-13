local cmp = require'cmp'

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			vim.fn['UltiSnips#Anon'](args.body)
		end,
	},
	view = {                                                        
		-- enable bottom-up completion popup
		entries = {name = 'custom', selection_order = 'near_cursor' }
	},
	window = {
		completion = cmp.config.window.bordered({
			-- completion popup color [Object:Color]
			winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:LineNr,Search:None'
		}),
		documentation = cmp.config.window.bordered(),
	},
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<C-b>'] = cmp.mapping.scroll_docs(4),
		['<C-f>'] = cmp.mapping.scroll_docs(-4),
	},
	sources = cmp.config.sources({
		{ name = 'ultisnips' },
		{ name = 'omni', max_item_count = 12},
		{ name = 'latex_symbols', option = { strategy = 2 }, max_item_count = 8},
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lua' },
		-- regex for umlaut matching
		{ name = 'buffer', max_item_count = 12, option = { keyword_pattern = [[\k\+]]}},
		{ name = 'path' },
	}),
	formatting = {
		format = function(entry, vim_item)
			-- Kind
			vim_item.kind = string.format('')
			-- Source
			vim_item.menu = ({
				buffer = "[Buf]",
				ultisnips = "[Ulti]",
				nvim_lsp = "[LSP]",
				nvim_lua = "[Lua]",
				path = "[Path]",
				omni = "[Omni]",
				latex_symbols = "[LaTeX]",
			})[entry.source.name]
			return vim_item
		end
	}
})
