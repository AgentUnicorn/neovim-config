vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', 'gl', function () vim.diagnostic.open_float() end, { desc = 'Open diagnostic in float' })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Find and replace" })

vim.keymap.set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all' })

vim.keymap.set('n', '<leader>cf', function () require('confirm').format() end, { desc = "Format current file" })
