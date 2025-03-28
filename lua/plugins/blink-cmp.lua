return {
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	opts_extend = {
		"sources.default",
	},
	opts = {
		-- <C-y>: Select and enter
		-- <C-e>: Cancel
		-- <Tab>: Show and insert
		-- <C-space>: Show or fallback
		keymap = {
			preset = "enter",
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = {
				auto_show = false,
			},
		},
		signature = { enable = true },
		cmdline = {
			keymap = {
				["<Tab>"] = { "accept" },
				["<CR>"] = { "accept_and_enter", "fallback" },
			},
			completion = {
				menu = {
					auto_show = function(ctx)
						return vim.fn.getcmdtype() == ":"
					end,
				},
			},
		},
		sources = {
			providers = {
				cmdline = {
					min_keyword_length = function(ctx)
						-- when typing a command, only show when the keyword is 3 characters or longer
						if ctx.mode == "cmdline" and string.find(ctx.line, " ") == nil then
							return 4
						end
						return 0
					end,
				},
			},
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = {
			implementation = "prefer_rust_with_warning",
		},
	},
}
