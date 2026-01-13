-- Custom plugins configuration
-- This file allows you to add additional plugins to your Kickstart.nvim setup

return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      -- Enable the dashboard module
      dashboard = {
        enabled = true,
        -- Configure the sections that appear on the dashboard
        sections = {
          {
            section = 'header',
          },
          {
            section = 'keys',
            gap = 1,
            padding = 1,
          },
          {
            icon = ' ',
            title = 'Recent Files',
            section = 'recent_files',
            indent = 2,
            limit = 8,
            padding = 1,
          },
          {
            section = 'startup',
          },
        },
        -- Configure presets
        preset = {
          -- Custom header with 'ksahoo' text
          header = [[
 ██╗  ██╗███████╗ █████╗ ██╗  ██╗ ██████╗  ██████╗ 
 ██║ ██╔╝██╔════╝██╔══██╗██║  ██║██╔═══██╗██╔═══██╗
 █████╔╝ ███████╗███████║███████║██║   ██║██║   ██║
 ██╔═██╗ ╚════██║██╔══██║██╔══██║██║   ██║██║   ██║
 ██║  ██╗███████║██║  ██║██║  ██║╚██████╔╝╚██████╔╝
 ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ]],
          -- Customize keyboard shortcuts on dashboard
          keys = {
            { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
            { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
            { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = ' ',
              key = 'c',
              desc = 'Config',
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            { icon = '󰒲 ', key = 'l', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
            { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
          },
        },
      },
      -- Enable other useful snacks.nvim features
      bigfile = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      statuscolumn = { enabled = false },
      words = { enabled = true },
    },
  },
}
