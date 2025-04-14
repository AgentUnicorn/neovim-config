return {
	"s1n7ax/nvim-window-picker",
	name = "window-picker",
	event = "VeryLazy",
	version = "2.*",
	config = function()
		require("window-picker").setup({
			hint = "floating-letter",
			selection_chars = "abcdefghijklmnopqrstuvwxyz",
			picker_config = {
				handle_mouse_click = false,
				statusline_winbar_picker = {
					selection_display = function(char, windowid)
						return "%=" .. char .. "%="
					end,
					use_winbar = "never", -- "always" | "never" | "smart"
				},
			},
		})
	end,
}
