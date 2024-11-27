require("telescope").setup{
  pickers = {
    find_files = {
      hidden = true
    },
    grep_string = {
      additional_args = {"--hidden"}
    },
    live_grep = {
      additional_args = {"--hidden"}
    },
  },
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })

end)
