vim.o.termguicolors = true
require("config.lazy")

vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#40a6fc", bold = true })
vim.cmd("colorscheme eldritch")
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#5c6370", bg = "NONE", bold = true })

-- Custom Macros
local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)
vim.api.nvim_create_augroup("JSLogMacro", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	group = "JSLogMacro",
	pattern = {
		"javacript",
		"typescript",
	},
	callback = function()
		vim.fn.setreg("l", "yoconsole.log('" .. esc .. "pa:" .. esc .. "la, " .. esc .. "pl")
	end,
})

-- Augment projects
vim.g.augment_disable_tab_mapping = true
vim.g.augment_workspace_folders = {
	"D:/ai-writer/ai-writer-fe",
	"D:/ai-writer/ai-writer-be",
}
