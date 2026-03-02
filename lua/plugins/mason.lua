---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "vtsls",
        "prettier",
        "eslint-lsp",
        "js-debug-adapter",
      },
    },
  },
}
