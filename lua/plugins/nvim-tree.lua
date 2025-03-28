return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loader_netrwPlugin = 1

		nvtree.setup({
			view = {
				width = 35,
			},
			renderer = {},
			filters = {},
			git = {
				ignore = false,
			},
		})
	end,
}
