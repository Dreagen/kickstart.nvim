return {
  {
    'github/copilot.vim',
    keys = {
      {
        '<leader>cd',
        ':Copilot disable<CR>',
        mode = { 'n', 'o', 'x' },
      },
      {
        '<leader>ce',
        ':Copilot enable<CR>',
        mode = { 'n', 'o', 'x' },
      },
    },
  },
}
