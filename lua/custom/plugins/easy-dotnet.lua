return {
  'GustavEikaas/easy-dotnet.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    local dotnet = require 'easy-dotnet'
    dotnet.setup {
      test_runner = {
        viewmode = 'float',
        enable_buffer_test_execution = true,
      },
      picker = 'snacks',
      background_scanning = true,
    }

    vim.keymap.set('n', '<leader>dt', dotnet.testrunner, { desc = 'Open .NET Test Runner' })
  end,
}
