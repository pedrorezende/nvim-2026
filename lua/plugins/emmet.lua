---@type LazySpec
return {
  "mattn/emmet-vim",
  ft = { "html", "css", "javascriptreact", "typescriptreact", "jsx", "tsx", "svelte", "vue" },
  init = function()
    vim.g.user_emmet_leader_key = "<C-z>"
  end,
}
