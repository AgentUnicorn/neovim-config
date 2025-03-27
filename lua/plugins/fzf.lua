return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = "FzfLua",
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	opts = {},
	keys = {
		-- Git
		{ "<leader>gb", "<cmd>FzfLua git_branches<cr>", desc = "Git branches" },
	},
}
