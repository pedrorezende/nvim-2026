---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "typescript",
      "tsx",
      "javascript",
      "jsdoc",
      "html",
      "css",
      "json",
      "yaml",
      "markdown",
      "markdown_inline",
      "graphql",
      "regex",
    },
  },
}
