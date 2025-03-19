-- Neovim options

vim.g.bigfile_size = 1024*1024*1 -- 1M

-- Nerd font
vim.g.have_nerd_font = true

-- Make line number default
vim.opt.number = true

-- Help jumping line. Jump down to next 9 lines (9J)
vim.opt.relativenumber = true

-- Don't show the mode, since it alreay in status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Case-insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep sign column on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Ask for confirmation for operation that would fail due to unsaved changes in the buffer
vim.opt.confirm = true

-- Sets how neovim will display certain whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
