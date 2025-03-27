return {
	"ahmedkhalf/project.nvim",
	opts = {
		manual_mode = false,
	},
	event = "VeryLazy",
	config = function(_, opts)
		require("project_nvim").setup(opts)
		local history = require("project_nvim.utils.history")
		history.delete_project = function(project)
			for k, v in pairs(history.recent_projects) do
				if v == project.value then
					history.recent_projects[k] = nil
					return
				end
			end
		end
		vim.keymap.set("n", "<leader>pd", function()
			require("fzf-lua").files({ cwd = require("project_nvim").get_recent_projects()[1] or vim.loop.cwd() })
		end, { desc = "Find project files (fzf-lua)" })
	end,
}
