return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      close_if_last_window = false,
    },
    config = function(_, opts)
      require("neo-tree").setup(opts)
      vim.keymap.set('n', '<C-n>', function()
        if vim.fn.exists(':Neotree') == 2 then
          vim.cmd('Neotree toggle filesystem reveal left')
        else
          vim.cmd('Neotree filesystem reveal left')
        end
      end, { noremap = true, silent = true })
    end,
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim", -- makes sure that this loads after Neo-tree.
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
  -- config = function()
  --   vim.keymap.set('n', '<C-n>', function()
  --     if vim.fn.exists(':Neotree') == 2 then
  --       vim.cmd('Neotree toggle filesystem reveal left')
  --     else
  --       vim.cmd('Neotree filesystem reveal left')
  --     end
  --   end, { noremap = true, silent = true })
  -- end
}
