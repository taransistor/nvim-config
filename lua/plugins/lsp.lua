return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
        },
        signs = true,
        underline = true,
        severity_sort = true,
        update_in_insert = false,
      })

      vim.lsp.enable({
        "clangd",
        "pyright",
        "ts_ls",
        "eslint",
        "html",
        "cssls",
        "lua_ls",
      })
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "pyright",
        "ts_ls",
        "html",
        "cssls",
        "lua_ls",
      },
    },
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
  },
}
