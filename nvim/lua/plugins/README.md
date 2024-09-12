All the .lua files in this directory will be concatenated as a table and be send as plugins to init.lua.

e.g.:
- catppuccin.lua
- treesitter.lua
=> Installs these plugins (and their dependencies)

Pattern to add a new plugin:
- create a file 'plugin_name.lua'
- return a lua table containing:
  - Github short URL of the plugin
  - the name
  - some other properties
  - the config (e.g. keymaps)

catppuccin -> theme
telescope -> fuzzy finder
treesitter -> highlighting and 
neotree -> tree folder search system
lualine -> footer
