return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>', function()
      if vim.fn.exists(':Neotree') == 2 then
        vim.cmd('Neotree toggle filesystem reveal left')
      else
        vim.cmd('Neotree filesystem reveal left')
      end
    end, { noremap = true, silent = true })
  end
}
