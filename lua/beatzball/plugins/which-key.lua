-- import gitsigns plugin safely
local setup, wk = pcall(require, "which-key")
if not setup then
  return
end

-- configure/enable which-key
local mappings = {
  ["<leader>"] = {
    s = { name = "Split" },
    t = { name = "Tab" },
    e = { name = "Explorer" },
    f = { name = "Find" },
    g = { name = "Git" },
    r = { name = "Restart" },
  },
}
local opts = {}
wk.register(mappings, opts)
