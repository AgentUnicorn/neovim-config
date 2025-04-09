return {
	"echasnovski/mini.splitjoin",
	version = "*",
	event = "VeryLazy",
	config = function()
		require("mini.splitjoin").setup()
	end,
	opts = {
		mappings = {
			toggle = "gS",
			split = "",
			join = "",
		},
	},
}
