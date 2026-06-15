-- umbra loader. See lua/umbra/palette.lua for the colors.
-- Usage:  require("umbra").setup({ darker = false })
-- or simply `:colorscheme umbra` / `:colorscheme umbra-darker`.

local M = {}

M.palette = require "umbra.palette"

---@param opts? { darker?: boolean }
function M.setup(opts)
  require("themecraft").load(M.palette, {
    name = "umbra",
    darker = (opts or {}).darker,
  })
end

return M
