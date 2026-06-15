-- panda loader. See lua/panda/palette.lua for the colors.
-- Usage:  require("panda").setup({ darker = false })
-- or simply `:colorscheme panda` / `:colorscheme panda-darker`.

local M = {}

M.palette = require "panda.palette"

---@param opts? { darker?: boolean }
function M.setup(opts)
  require("themecraft").load(M.palette, {
    name = "panda",
    darker = (opts or {}).darker,
  })
end

return M
