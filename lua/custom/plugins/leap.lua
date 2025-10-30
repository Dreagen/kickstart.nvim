return {
  {
    'ggandor/leap.nvim',
    config = function()
      require('leap').set_default_mappings()
    end,
    keys = {
      {
        's',
        '<Plug>(leap-forward)',
        mode = { 'n', 'o', 'x' },
      },
      {
        'gs',
        '<Plug>(leap-backward)',
        mode = { 'n' },
      },
    },
  },
}
