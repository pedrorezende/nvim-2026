---@type LazySpec
return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "marilari88/neotest-vitest",
  },
  opts = function(_, opts)
    if not opts.adapters then opts.adapters = {} end
    table.insert(opts.adapters, require("neotest-vitest"))
  end,
}
