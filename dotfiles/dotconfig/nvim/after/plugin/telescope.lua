local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

local telescope = require('telescope')
telescope.setup {
	defaults = {
		layout_strategy = 'vertical',
		layout_config = {
			vertical = {
				prompt_position = "bottom",
				mirror = false,
			},
		},
	},
}

require('telescope').load_extension('fzf')
