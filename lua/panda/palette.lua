-- Panda — a faithful port of the Panda Syntax theme by Siamak Mokhtari &
-- Dan Hedgecock (tinkertrain/panda-syntax-vscode). Colors taken from the
-- compiled dist/Panda.json. Engine key roles: `cyan` = functions, `amber` =
-- numbers/constants; the `overrides` table restores Panda's iconic tag/type look.

local M = {}

M.none = "NONE"
M.background = "dark"

-- ── Panda backdrop ───────────────────────────────────────────────────────────
M.bg_dark       = "#242526" -- sidebar
M.bg            = "#292a2b" -- editor
M.bg_alt        = "#2a2c2d" -- floats / widgets
M.bg_high       = "#31353a"
M.cursorline    = "#31353a" -- editor.lineHighlightBackground
M.visual        = "#373b41" -- selection
M.bg_sel        = "#3e4250"
M.border        = "#373b41"
M.gutter        = "#757575" -- editorLineNumber
M.gutter_active = "#cdcdcd"

-- ── Text ramp ────────────────────────────────────────────────────────────────
M.comment   = "#676b79"
M.fg_dim    = "#8b8b92"
M.fg_muted  = "#bbbbbb"
M.fg        = "#e6e6e6"
M.fg_bright = "#ffffff"

-- ── Syntax ───────────────────────────────────────────────────────────────────
M.keyword   = "#ff75b5" -- pink
M.operator  = "#e6e6e6" -- Panda operators are light gray
M.punct     = "#9b9ba2"
M.type      = "#19f9d8" -- mint (entity.name.type)
M.string    = "#19f9d8" -- mint (the Panda signature)
M.property  = "#e6e6e6"
M.parameter = "#bbbbbb"

-- ── Accents ──────────────────────────────────────────────────────────────────
M.cyan        = "#6fc1ff" -- blue (functions, info, links)
M.cyan_dim    = "#45a9f9" -- deeper blue (escapes, specials)
M.cyan_bright = "#8fd0ff"
M.amber       = "#ffb86c" -- orange (numbers, constants, storage, warnings)
M.amber_dim   = "#c98f4f"

-- ── Semantic / state ─────────────────────────────────────────────────────────
M.red     = "#ff2c6d" -- pink-red (tags, errors, deletes)
M.green   = "#19f9d8" -- Panda's green is its mint
M.yellow  = "#ffcc95" -- light orange
M.blue    = "#45a9f9"
M.magenta = "#b084eb" -- purple (modules, at-rules, export)

-- ── Git ──────────────────────────────────────────────────────────────────────
M.git_add    = "#19f9d8"
M.git_change = "#ffb86c"
M.git_delete = "#ff2c6d"

-- ── Subtle tints over #292a2b ────────────────────────────────────────────────
M.diff_add    = "#1e2e2c"
M.diff_change = "#2e2a1e"
M.diff_delete = "#2e1e25"
M.diff_text   = "#244340"

M.vt_error = "#2e1c22"
M.vt_warn  = "#2e271c"
M.vt_info  = "#1c2630"
M.vt_hint  = "#1c2630"

M.search    = "#3a3326"
M.incsearch = "#50461f"

-- ── Fidelity overrides: Panda's iconic tag/type/this colors ──────────────────
M.overrides = {
  ["@tag"] = { fg = "#ff2c6d" },
  ["@tag.builtin"] = { fg = "#ff2c6d" },
  ["@tag.delimiter"] = { fg = "#ffcc95" },
  ["@tag.attribute"] = { fg = "#ffb86c", italic = true },
  ["@type"] = { fg = "#19f9d8", italic = true },
  ["@type.builtin"] = { fg = "#19f9d8", italic = true },
  ["@type.definition"] = { fg = "#19f9d8", italic = true },
  ["@constructor"] = { fg = "#ffcc95" }, -- support.class
  ["@variable.builtin"] = { fg = "#ff9ac1", italic = true }, -- this / self
  ["@constant.builtin"] = { fg = "#ff9ac1" }, -- light pink constants
  ["@keyword.import"] = { fg = "#b084eb", italic = true }, -- import / export purple
  ["@string.escape"] = { fg = "#45a9f9", bold = true },
  ["@keyword.operator"] = { fg = "#ffcc95" }, -- logical operators light orange
}

return M
