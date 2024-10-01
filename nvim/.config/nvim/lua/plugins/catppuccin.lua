return { 
  "catppuccin/nvim", 
  lazy = false,
  name = "catppuccin", 
  priority = 1001,
  -- Using the property/attribute 'config' implicitly runs a 'require("catppuccin").setup()'.
  -- Runs the function just after the pluggin has been loaded.
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}
