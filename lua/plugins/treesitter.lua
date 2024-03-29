return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufReadPre",
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
        -- ensure_installed = { "astro", "css", "html", "javascript", "json", "markdown", "markdown_inline", "lua", "rust", "tsx", "typescript", "vue", "zig" },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
