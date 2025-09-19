return {
  'dmtrKovalenko/fff.nvim',
  build = 'cargo build --release',
  -- or if you are using nixos
  -- build = "nix run .#release",
  opts = {
    prompt = '> ',
    layout = {
      prompt_position = 'top', -- Position of prompt ('top' or 'bottom')
    },
  },
  keys = {
    {
      '<leader>ff',
      function()
        require('fff').find_files() -- or find_in_git_root() if you only want git files
      end,
      desc = 'Open file picker',
    },
  },
}
