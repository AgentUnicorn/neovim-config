return {
	"navarasu/onedark.nvim",
	priority = 1000,
	config = function()
		require("onedark").setup({
			style = "deep",
			transparent = "false",
		})
		-- Enable theme
		require("onedark").load()
	end,
}
