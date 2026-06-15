-- themecraft — the shared engine behind Umbra and Panda.
--
-- Every theme is just a palette table (see any `lua/<theme>/palette.lua`) plus a
-- name. The highlight logic lives once, here, so all themes stay consistent and
-- new ones cost only a palette file. Each theme also gets a "darker" sibling for
-- free: the engine deepens the background-family colors before building groups.

local M = {}

local group_modules = {
  "themecraft.groups.editor",
  "themecraft.groups.syntax",
  "themecraft.groups.treesitter",
  "themecraft.groups.lsp",
  "themecraft.groups.plugins",
}

-- Background-family keys deepened for the "darker" variant. Foreground, accents
-- and selection/border colors are left alone so contrast actually increases.
local DARK_KEYS = {
  "bg",
  "bg_dark",
  "bg_alt",
  "bg_high",
  "cursorline",
  "diff_add",
  "diff_change",
  "diff_delete",
  "diff_text",
  "vt_error",
  "vt_warn",
  "vt_info",
  "vt_hint",
}

---Blend a #rrggbb color toward black, keeping `keep` (0..1) of its brightness.
local function darken(hex, keep)
  local r = tonumber(hex:sub(2, 3), 16)
  local g = tonumber(hex:sub(4, 5), 16)
  local b = tonumber(hex:sub(6, 7), 16)
  return string.format(
    "#%02x%02x%02x",
    math.floor(r * keep + 0.5),
    math.floor(g * keep + 0.5),
    math.floor(b * keep + 0.5)
  )
end

local function set_terminal(p)
  vim.g.terminal_color_0 = p.bg_high
  vim.g.terminal_color_8 = p.comment
  vim.g.terminal_color_1 = p.red
  vim.g.terminal_color_9 = p.red
  vim.g.terminal_color_2 = p.green
  vim.g.terminal_color_10 = p.green
  vim.g.terminal_color_3 = p.amber
  vim.g.terminal_color_11 = p.amber
  vim.g.terminal_color_4 = p.cyan_dim
  vim.g.terminal_color_12 = p.cyan_dim
  vim.g.terminal_color_5 = p.magenta
  vim.g.terminal_color_13 = p.magenta
  vim.g.terminal_color_6 = p.cyan
  vim.g.terminal_color_14 = p.cyan_bright
  vim.g.terminal_color_7 = p.fg
  vim.g.terminal_color_15 = p.fg_bright
end

---Apply a theme.
---@param palette table  the palette (lua/<theme>/palette.lua)
---@param opts { name: string, darker?: boolean }
function M.load(palette, opts)
  opts = opts or {}
  local darker = opts.darker == true
  local name = opts.name or "themecraft"

  local p = palette
  if darker then
    p = vim.tbl_extend("force", {}, palette) -- shallow copy; only bg keys change
    for _, k in ipairs(DARK_KEYS) do
      if p[k] then p[k] = darken(p[k], 0.6) end
    end
  end

  if vim.g.colors_name then vim.cmd "highlight clear" end
  if vim.fn.exists "syntax_on" == 1 then vim.cmd "syntax reset" end

  vim.o.termguicolors = true
  vim.o.background = p.background or "dark"
  vim.g.colors_name = darker and (name .. "-darker") or name

  local set_hl = vim.api.nvim_set_hl
  for _, mod in ipairs(group_modules) do
    for hl, spec in pairs(require(mod)(p)) do
      set_hl(0, hl, spec)
    end
  end

  -- Per-theme fidelity overrides applied last. A palette may set `overrides` to a
  -- table of highlight groups, or a function(palette) returning one.
  local ov = p.overrides
  if type(ov) == "function" then ov = ov(p) end
  if type(ov) == "table" then
    for hl, spec in pairs(ov) do
      set_hl(0, hl, spec)
    end
  end

  set_terminal(p)
end

return M
