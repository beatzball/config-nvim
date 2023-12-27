local telescope_builtin = require("telescope.builtin")

local register = {
  ["<S-h>"] = { "<cmd>bprevious<cr>", "Buffer Previous" },
  ["<S-l>"] = { "<cmd>bnext<cr>", "Buffer Next" },
  ["<leader>/"] = { telescope_builtin.live_grep, "fast fuzzy live grep" },
  ["<leader>"] = {
    -- buffers
    b = {
      name = "+buffers",
      b = { "<cmd>e #<cr>", "Switch to other Buffer" },
      d = { "<cmd>bdelete<cr>", "Buffer Delete" },
      n = { "<cmd>bnext<cr>", "Buffer Next" },
      p = { "<cmd>bprevious<cr>", "Buffer Previous" },
      f = { "<cmd>Telescope buffers<cr>", "Buffer Telescope" },
    },
    -- session
    s = { name = "+session" },
    -- telescope
    p = { telescope_builtin.find_files, "fast fuzzy" },
    f = {
      name = "+fuzzy find",
      f = { telescope_builtin.find_files, "fuzzy find files" },
      g = { telescope_builtin.live_grep, "fuzzy live grep" },
    },

    -- tree
    e = {
      name = "+navigation",

      -- Neotree
      _ = { ":Neotree position=current<CR>", "neotree - open navigation in current pane" },
      e = { ":Neotree toggle<CR>", "neotree - open navigation to left" },
      o = { ":Neotree filesystem reveal left<CR>", "neotree - open navigation to left" },
      r = { ":Neotree filesystem reveal right<CR>", "neotree - open navigation to right" },
      x = { ":Neotree close<CR>", "neotree - close navigation" },

      -- NvimTree
      t = {
        name = "+nvim tree",
        e = { ":NvimTreeToggle<CR>", "tree toggle" },
        o = { ":NvimTreeFocus<CR>", "tree focus" },
        -- f = { ":NvimTreeFindFile<CR>", "tree find files" },
      },
    },
  },
}

return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    config = function()
      local wk = require("which-key")
      wk.register(register)
    end,
  },
}
