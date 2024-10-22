-- ~/.config/nvim/lua/user/plugins/live-server.lua

return {
  "ngtuonghy/live-server-nvim",       -- Plugin repository
  event = "VeryLazy",                  -- Load the plugin lazily
  build = ":LiveServerInstall",        -- Command to run after installation
  config = function()
    require("live-server-nvim").setup{
      -- custom = {
      --   "--port=8080",          -- Optional: Specify the port (default: 8080)
      --   "--no-css-inject",      -- Optional: Disable CSS injection
      -- },
      serverPath = vim.fn.stdpath("data") .. "/live-server/", -- Default server installation path
      open = "folder",           -- Options: "folder" or "cwd"
    }
  end,
}

