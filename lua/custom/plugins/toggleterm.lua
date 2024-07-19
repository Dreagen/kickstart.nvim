return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      shell = '/bin/zsh',
      open_mapping = [[<c-\>]],
      direction = 'float',
      autochdir = true,
    },
    config = function(_, opts)
      require('toggleterm').setup(opts)

      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new { cmd = 'lazygit', hidden = true }

      function _lazygit_toggle()
        lazygit:toggle()
      end

      vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua _lazygit_toggle()<CR>', { desc = 'LazyGit', noremap = true, silent = true })
    end,
  },
}
