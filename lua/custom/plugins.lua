local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event="VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts ={
      ensure_installed={
        "eslint-lsp",
        "prettier",
        "typescript-language-server",
        "lua-language-server",
        "gopls",
        "mypy",
        "ruff",
        "jedi-language-server",
        "black",
        "rust-analyzer",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
       require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}
return plugins
