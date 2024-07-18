return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'Issafalcon/neotest-dotnet',
  },
  opts = function()
    return {
      adapters = {
        require 'neotest-dotnet' {
          framework = 'nunit', -- Specify your test framework
          log_level = 'debug', -- Enable debug logging
        },
      },
      loglevel = 1,
    }
  end,
}
