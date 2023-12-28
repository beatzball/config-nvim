-- Language Settings
return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver" },
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.diagnostics.eslint_d,
          null_ls.builtins.formatting.prettier,
        },
      })
      local wk = require("which-key")
      wk.register({
        ["<leader>b="] = { vim.lsp.buf.format, "Buffer Format File" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({
        on_attach = on_attach,
        root_dir = lspconfig.util.root_pattern("package.json"),
        single_file_support = false,
      })
      lspconfig.denols.setup({
        on_attach = on_attach,
        root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
      })
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local wk = require("which-key")
          wk.register({
            ["<leader>l"] = {
              name = "LSP",
              D = { vim.lsp.buf.declaration, "LSP Declaration" },
              K = { vim.lsp.buf.hover, "LSP Hover" },
              d = { vim.lsp.buf.definition, "LSP Definition" },
              i = { vim.lsp.buf.implementation, "LSP Implementation" },
              r = { vim.lsp.buf.references, "LSP References" },
              t = { vim.lsp.buf.type_definition, "LSP Type Definition" },
              n = { vim.lsp.buf.rename, "LSP Rename" },
              c = { vim.lsp.buf.code_action, "LSP Code Action" },
              f = {
                function()
                  vim.lsp.buf.format({ async = true })
                end,
                "LSP Code Action",
              },
              ["<C-k>"] = { vim.lsp.buf.signature_help, "LSP Signature Help" },
              ["w"] = {
                name = "LSP Workspaces",
                a = { vim.lsp.buf.add_workspace_folder, "LSP Add Workspace Folder" },
                r = { vim.lsp.buf.remove_workspace_folder, "LSP Remove Workspace Folder" },
                l = {
                  function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                  end,
                  "LSP List Workspace Folders",
                },
              },
            },
          })
          -- local opts = { buffer = ev.buf }
          -- vim.keymap.set("n", "lgD", vim.lsp.buf.declaration, opts)
          -- vim.keymap.set("n", "lgd", vim.lsp.buf.definition, opts)
          -- vim.keymap.set("n", "lK", vim.lsp.buf.hover, opts)
          -- vim.keymap.set("n", "lgi", vim.lsp.buf.implementation, opts)
          -- vim.keymap.set("n", "l<C-k>", vim.lsp.buf.signature_help, opts)
          -- vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
          -- vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
          -- vim.keymap.set("n", "<leader>wl", function()
          --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          -- end, opts)

          -- vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
          -- vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
          -- vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
          -- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          -- vim.keymap.set("n", "<space>f", function()
          --   vim.lsp.buf.format { async = true }
          -- end, opts)
        end,
      })
    end,
  },
}
