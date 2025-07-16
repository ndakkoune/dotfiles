return {
  -- LSP Package Manager
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  -- Neovim (client side)
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      -- Setup each LSP server
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.bashls.setup({ capabilities = capabilities })
      lspconfig.ruff.setup({ capabilities = capabilities })
      lspconfig.pylsp.setup({ capabilities = capabilities })
      -- lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.marksman.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })
      -- Keymaps
      vim.keymap.set("n","K",vim.lsp.buf.hover, {})
      vim.keymap.set("n","gd",vim.lsp.buf.definition, {})
      vim.keymap.set({"n","v"},"<leader>ca",vim.lsp.buf.code_action, {})
    end
  },
  -- LSP Server (server side)
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        -- LSP Servers to have installed in order for mason to load
          ensure_installed = {
          "lua_ls",
          "bashls",
          "ruff",
          "pylsp",
          "marksman",
          "clangd"
        },
      }
    end
  },
  {
    "python-lsp/python-lsp-ruff",
  }
}
