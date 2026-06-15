-- Umbra — a near-monochrome graphite theme.
-- Cyan is the soul, amber is the single spark. Everything else stays calm.
-- This module is the single source of truth for every color in the theme.

local M = {}

M.none = "NONE"

-- ── Graphite backdrop (cool-neutral, layered for depth) ──────────────────────
M.bg_dark       = "#0e0e10" -- sidebars, inactive windows, tabline fill
M.bg            = "#141416" -- editor background
M.bg_alt        = "#1a1a1d" -- floats, popups, statusline
M.bg_high       = "#202024" -- column highlight, lsp references
M.cursorline    = "#1b1b1e" -- subtle current-line wash
M.visual        = "#26262b" -- visual selection
M.bg_sel        = "#2d2d33" -- stronger selection (pmenu sel)
M.border        = "#2a2a2f" -- window/float borders, separators
M.gutter        = "#3a3a40" -- inactive line numbers
M.gutter_active = "#8a8a92" -- current line number

-- ── Text ramp ────────────────────────────────────────────────────────────────
M.comment   = "#5a5a60"
M.fg_dim    = "#8a8a90"
M.fg_muted  = "#a8a8b0"
M.fg        = "#cdcdce" -- silver, the resting text color
M.fg_bright = "#e8e8ea" -- headings, bold, emphasis

-- ── Syntax (mono with structure via brightness) ──────────────────────────────
M.keyword   = "#9a9aa2"
M.operator  = "#7a7a82"
M.punct     = "#6f6f76"
M.type      = "#b8c0c8" -- cool light gray
M.string    = "#8aa8a0" -- desaturated teal-gray (a whisper of the accent)
M.property  = "#b9b9c0"
M.parameter = "#c0c0c6"

-- ── Accents ──────────────────────────────────────────────────────────────────
M.cyan        = "#2dd4bf" -- the signature glow (functions, info, links)
M.cyan_dim    = "#1f8f86" -- quieter cyan (special, attributes, borders accent)
M.cyan_bright = "#5fe6d6" -- emphasis
M.amber       = "#d6a55c" -- the spark (numbers, constants, booleans, warnings)
M.amber_dim   = "#9a7a4a"

-- ── Semantic / state ─────────────────────────────────────────────────────────
M.red     = "#d4707a" -- error, delete
M.green   = "#7a9a6a" -- ok, add
M.yellow  = "#d6a55c" -- warn (shares the amber spark)
M.blue    = "#7a90b0" -- hint, cool informational
M.magenta = "#a88ab0" -- rare markup accent

-- ── Git ──────────────────────────────────────────────────────────────────────
M.git_add    = "#7a9a6a"
M.git_change = "#d6a55c"
M.git_delete = "#d4707a"

-- ── Subtle background tints over graphite ────────────────────────────────────
M.diff_add    = "#16201a"
M.diff_change = "#201d16"
M.diff_delete = "#241619"
M.diff_text   = "#1f2b24"

M.vt_error = "#21161a" -- virtual-text backgrounds
M.vt_warn  = "#201c14"
M.vt_info  = "#13201e"
M.vt_hint  = "#161a20"

M.search    = "#2a3a38" -- cyan-tinted search wash
M.incsearch = "#3a4a47"

return M
