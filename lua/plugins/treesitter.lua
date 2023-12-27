return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
        ensure_installed = { "astro", "css", "html", "javascript", "json", "markdown", "markdown_inline", "lua", "rust", "tsx", "typescript", "vue", "zig" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
}
