return {
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      require('mini.icons').setup()
    end
  },
  {
    'echasnovski/mini.comment',
    version = false,
    config = function()
      require('mini.comment').setup()
    end
  }
}
