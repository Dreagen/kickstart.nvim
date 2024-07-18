return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    opts = {
      close_if_last_window = true,
    },
    -- keys = {
    --   {
    --     "E",
    --     "<cmd>lua require('spider').motion('e')<CR>",
    --     mode = { "n", "o", "x" },
    --   },
    -- },
  },
}
