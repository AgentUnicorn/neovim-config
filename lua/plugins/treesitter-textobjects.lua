return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	init = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {

						["a="] = { query = "@assignment.outer", desc = "Select outer part of the assignment" },
						["i="] = { query = "@assignment.inner", desc = "Select inner part of the assignment" },
						["l="] = { query = "@assignment.lhs", desc = "Select left hand side of the assignment" },
						["r="] = { query = "@assignment.rhs", desc = "Select right hand side of the assignment" },

						["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
						["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

						["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
						["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

						["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
						["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

						["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
						["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },

						["am"] = {
							query = "@function.outer",
							desc = "Select outer part of a function/method definition",
						},
						["im"] = {
							query = "@function.inner",
							desc = "Select inner part of a function/method definition",
						},

						["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
						["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
					},
				},
				swaps = {
					enable = true,
					swap_next = {
						["<leader>na"] = "@parameter.inner",
						["<leader>nm"] = "@function.outer",
					},
					swap_next = {
						["<leader>pa"] = "@parameter.inner",
						["<leader>pm"] = "@function.outer",
					},
				},
				move = {
					enable = true,
					set_jumps = true,
					goto_next_start = {
						["]f"] = { query = "@call.outer", desc = "Next function call start" },
						["]m"] = { query = "@function.outer", desc = "Next function/method def start" },
						["]c"] = { query = "@class.outer", desc = "Next class start" },
						["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
						["]l"] = { query = "@loop.outer", desc = "Next loop start" },
						["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
						["]z"] = { query = "@fold", query_group = "locals", desc = "Next fold" },
					},
					goto_next_end = {
						["]F"] = { query = "@call.outer", desc = "Next function call end" },
						["]M"] = { query = "@function.outer", desc = "Next function/method def end" },
						["]C"] = { query = "@class.outer", desc = "Next class end" },
						["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
						["]L"] = { query = "@loop.outer", desc = "Next loop end" },
					},
					goto_previous_start = {
						["[f"] = { query = "@call.outer", desc = "Next function call start" },
						["[m"] = { query = "@function.outer", desc = "Next function/method def start" },
						["[c"] = { query = "@class.outer", desc = "Next class start" },
						["[i"] = { query = "@conditional.outer", desc = "Next conditional start" },
						["[l"] = { query = "@loop.outer", desc = "Next loop start" },
					},
					goto_previous_end = {
						["[F"] = { query = "@call.outer", desc = "Next function call end" },
						["[M"] = { query = "@function.outer", desc = "Next function/method def end" },
						["[C"] = { query = "@class.outer", desc = "Next class end" },
						["[I"] = { query = "@conditional.outer", desc = "Next conditional end" },
						["[L"] = { query = "@loop.outer", desc = "Next loop end" },
					},
				},
			},
		})

		local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")

		vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
		vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)

		vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f)
		vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F)
		vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t)
		vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T)
	end,
}
