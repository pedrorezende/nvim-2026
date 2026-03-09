---@type LazySpec
return {
  "brenoprata10/nvim-highlight-colors",
  event = "BufReadPre",
  opts = {
    render = "virtual",
    enable_tailwind = true,
  },
}
