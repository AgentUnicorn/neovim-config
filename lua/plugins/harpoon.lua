return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon").setup()

		local harpoon = require("harpoon")

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add buffer to harpoon" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toogle harpoon quick menu list" })

		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end, { desc = "Go to file 1" })
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end, { desc = "Go to file 2" })
		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end, { desc = "Go to file 3" })
		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end, { desc = "Go to file 4" })
		vim.keymap.set("n", "<leader>5", function()
			harpoon:list():select(5)
		end, { desc = "Go to file 5" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-t>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-r>", function()
			harpoon:list():next()
		end)
	end,
}
