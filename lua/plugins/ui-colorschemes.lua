return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme "catppuccin-mocha"
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("duskfox")
      local nightfox = require("nightfox")
      nightfox.setup({
        -- palettes = {
        --   duskfox = {
        --     -- bg3 = "#F00"
        --   }
        -- },
      })
    end,
  },
}
