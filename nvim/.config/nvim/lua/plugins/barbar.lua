return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {

    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true, …etc.
  },
  config = function()
    require('barbar').setup()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    map('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
    map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
    -- map('n', '<leader>gt', '<Cmd>BufferGotoPinned<CR>', opts)
    -- map('n', '<leader>p', '<Cmd>BufferPin<CR>', opts)
  end,
  version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
