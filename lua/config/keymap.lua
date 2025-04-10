vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagnostic in float" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Back to Neovim Explorer" })

-- Disable whichkey behavior

-- Code
vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "Format current file" })

-- Buffer
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump down half page of buffer" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump up half page of buffer" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search term but in the middle" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search term but in the middle" })

-- Text editing and selection
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Find and replace" })
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste but still keep text in clipboard" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })

-- Move lines
-- vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
-- vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
-- vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
-- vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
-- vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
-- vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
-- vim.keymap.set("n", "<A-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
-- vim.keymap.set("n", "<A-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
-- vim.keymap.set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
-- vim.keymap.set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
-- vim.keymap.set("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
-- vim.keymap.set("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

local wk = require("which-key")
local harpoon = require("harpoon")
local windowPicker = require("window-picker")

wk.add({
	{
		mode = { "n", "v" },
	},
	{
		mode = { "n" },
		-- Harpoon
		{ "<leader>h", group = "Harpoon" },
		{
			"<leader>ha",
			function()
				harpoon:list():add()
			end,
			desc = "Add buffer to harpoon",
		},
		{
			"<leader>h1",
			function()
				harpoon:list():select(1)
			end,
			desc = "Go to file 1",
		},
		{
			"<leader>h2",
			function()
				harpoon:list():select(2)
			end,
			desc = "Go to file 2",
		},
		{
			"<leader>h3",
			function()
				harpoon:list():select(3)
			end,
			desc = "Go to file 3",
		},
		{
			"<leader>h4",
			function()
				harpoon:list():select(4)
			end,
			desc = "Go to file 4",
		},
		{
			"<C-e>",
			function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Toogle harpoon quick menu list",
		},
		{
			"<C-t>",
			function()
				harpoon:list():prev()
			end,
			desc = "Toggle previous buffer",
		},
		{
			"<C-s>",
			function()
				harpoon:list():next()
			end,
			desc = "Toggle next buffer",
		},

		-- Neovim tree
		{
			"<leader>e",
			group = "NeovimTree",
		},
		{
			"<leader>eb",
			"<cmd>NvimTreeFocus<CR>",
			desc = "Open the tree if it is close, then focus on the tree",
		},
		{
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			desc = "Move the cursor in the tree for the current buffer",
		},
		{
			"<leader>ee",
			"<cmd>NvimTreeToggle<CR>",
			desc = "Open or close the tree",
		},
		{
			"<leader>ec",
			"<cmd>NvimTreeCollapse<CR>",
			desc = "Collapse the tree recursively",
		},
		{
			"<leader>er",
			"<cmd>NvimTreeRefresh<CR>",
			desc = "Refresh file explorer",
		},

		-- Project and FzfLua
		{
			"<leader>p",
			group = "Project & FzfLua",
		},
		{
			"<leader>pf",
			":FzfLua files<CR>",
			desc = "Find files in your current working project",
		},
		{
			"<leader>pl",
			":FzfLua live_grep<CR>",
			desc = "Find text in files in current working project",
		},

		-- Augment
		{
			"<leader>a",
			group = "Augment",
		},
		{
			"<leader>as",
			group = "Signin/Signout",
		},
		{
			"<leader>ass",
			":Augment status<CR>",
			desc = "View the current status of the plugin",
		},
		{
			"<leader>asi",
			":Augment signin<CR>",
			desc = "Start the signin flow",
		},
		{
			"<leader>aso",
			":Augment signout<CR>",
			desc = "Signout the current user",
		},
		{
			"<leader>al",
			":Augment log<CR>",
			desc = "View the plugin log",
		},
		{
			"<leader>ac",
			group = "Chat",
		},
		{
			"<leader>acc",
			":Augment chat<CR>",
			desc = "Send a chat message to Augment AI",
		},
		{
			"<leader>acn",
			":Augment chat-new<CR>",
			desc = "Start a new chat conversation",
		},
		{
			"<leader>act",
			":Augment chat-toggle<CR>",
			desc = "Toggle the chat panel visibility",
		},

		-- Window
		{
			"<leader>w",
			group = "Window",
		},
		{
			"<leader>wj",
			function()
				windowPicker.pick_window()
			end,
			desc = "Show window letter",
		},
	},
})
