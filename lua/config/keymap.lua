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
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
vim.keymap.set("n", "<A-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- FzfLua
vim.keymap.set("n", "<leader>pf", ":FzfLua files<CR>", { desc = "Find files in your current working project" })
vim.keymap.set("n", "<leader>pl", ":FzfLua live_grep<CR>", { desc = "Find text in files in current working project" })

-- NeovimTree
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Open or close the tree" })
vim.keymap.set(
	"n",
	"<leader>eb",
	"<cmd>NvimTreeFocus<CR>",
	{ desc = "Open the tree if it is close, then focus on the tree" }
)
vim.keymap.set(
	"n",
	"<leader>ef",
	"<cmd>NvimTreeFindFileToggle<CR>",
	{ desc = "Move the cursor in the tree for the current buffer," }
)
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse the tree recursively" })
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
