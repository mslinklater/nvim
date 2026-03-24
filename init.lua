-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Disable netrw
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- Install telescope and required dependency
-- vim.pack.add({
-- 	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
-- 	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
-- })

-- Basic telescope setup
-- require('telescope').setup({
-- 	defaults = {
-- 		mappings = {
-- 			i = {
-- 				['<C-j>'] = 'move_selection_next',
-- 				['<C-k>'] = 'move_selection_previous',
-- 			},
-- 		},
-- 	},
-- })

-- local builtin = require('telescope.builtin')

-- vim.keymap.set('n', '<leader>ff', builtin.find_files,	{ desc = 'Telescope: Find Files' })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep,	{ desc = 'Telescope: Find Files' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers,	{ desc = 'Telescope: Find Files' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags,	{ desc = 'Telescope: Find Files' })
-- vim.keymap.set('n', '<leader>fo', builtin.oldfiles,	{ desc = 'Telescope: Find Files' })
-- vim.keymap.set('n', '<leader>fk', builtin.keymaps,	{ desc = 'Telescope: Find Files' })

-- Optional - quick project-wide grep from visual selection
-- vim.keymap.set('v', '<leader>fg', function()
-- 	builtin.grep_string({ search = vim.fn.expand('<cword>') })
-- end, { desc = 'Telescope: grep string under cursor' })
