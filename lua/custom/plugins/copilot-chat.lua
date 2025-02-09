-- return {
--   {
--     'CopilotC-Nvim/CopilotChat.nvim',
--     dependencies = {
--       { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
--       { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
--     },
--     opts = {
--       debug = true, -- Enable debugging
--       -- See Configuration section for rest
--     },
--     -- See Commands section for default commands if you want to lazy load on them
--     keys = {
--       {
--         '<leader>co',
--         ':CopilotChatOpen<CR>',
--         mode = { 'n', 'o', 'x' },
--       },
--     },
--   },
-- }

return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    keys = {
      {
        '<leader>co',
        ':CopilotChatOpen<CR>',
        mode = { 'n', 'o', 'x' },
      },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
