return {
  -- Other plugins
  {
    'kawre/leetcode.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' }, -- Ensure Telescope is installed
    config = function()
      require('leetcode').setup {
        -- Configuration options
        language = 'cpp', -- Default language (cpp, python, etc.)
        cpp = {
          compiler = 'g++',
          compile_command = { 'g++', '-std=c++17', '-o', 'a.out' },
          run_command = { './a.out' },
        },
        python = {
          run_command = { 'python3' },
        },
      }
      vim.api.nvim_set_keymap('n', '<leader>lo', ':LeetCodeOpenProblem<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>ls', ':LeetCodeSubmit<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lt', ':LeetCodeTest<CR>', { noremap = true, silent = true })
    end,
  },
}
