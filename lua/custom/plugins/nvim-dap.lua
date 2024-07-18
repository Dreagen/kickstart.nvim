return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
    },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'

      dap.adapters.coreclr = {
        type = 'executable',
        command = '/home/nick/dev/netcoredbg/build/src/netcoredbg',
        args = { '--interpreter=vscode' },
      }

      dap.configurations.cs = {
        {
          type = 'coreclr',
          name = 'launch - netcoredbg',
          request = 'launch',
          program = function()
            return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
          end,
        },
      }

      dap.adapters.netcoredbg = {
        type = 'executable',
        command = '/home/nick/dev/netcoredbg/build/src/netcoredbg',
        args = { '--interpreter=vscode' },
      }

      dapui.setup()
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set('n', '<F5>', function()
        dap.continue()
      end, {
        desc = 'Continue',
      })
      vim.keymap.set('n', '<F10>', function()
        dap.step_over()
      end, {
        desc = 'Step over',
      })
      vim.keymap.set('n', '<F11>', function()
        dap.step_into()
      end, {
        desc = 'Step into',
      })
      vim.keymap.set('n', '<F12>', function()
        dap.step_out()
      end, {
        desc = 'Step out',
      })
      vim.keymap.set('n', '<Leader>Dt', function()
        dap.toggle_breakpoint()
      end, {
        desc = 'Toggle breakpoint',
      })
      vim.keymap.set({ 'n', 'v' }, '<Leader>Dh', function()
        require('dap.ui.widgets').hover()
      end, {
        desc = 'Open hover UI',
      })
      vim.keymap.set({ 'n', 'v' }, '<Leader>Dp', function()
        require('dap.ui.widgets').preview()
      end, { desc = 'Open preview' })
      vim.keymap.set('n', '<Leader>Df', function()
        local widgets = require 'dap.ui.widgets'
        widgets.centered_float(widgets.frames)
      end, { desc = 'Open float UI' })
      vim.keymap.set('n', '<Leader>Ds', function()
        local widgets = require 'dap.ui.widgets'
        widgets.centered_float(widgets.scopes)
      end, { desc = 'Open scopes' })
    end,
  },
}
