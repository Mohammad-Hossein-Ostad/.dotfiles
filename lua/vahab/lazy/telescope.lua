return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    require('telescope').setup({})

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- Find projct file
    vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- Find git file
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
    -- Find help tags
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
  end
}
