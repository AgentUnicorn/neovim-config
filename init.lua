require("config.lazy")

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
