-- Core editor UI: backgrounds, gutters, menus, statusline, search, diff.
return function(p)
  return {
    Normal = { fg = p.fg, bg = p.bg },
    NormalNC = { fg = p.fg, bg = p.bg },
    NormalFloat = { fg = p.fg, bg = p.bg_alt },
    FloatBorder = { fg = p.border, bg = p.bg_alt },
    FloatTitle = { fg = p.cyan, bg = p.bg_alt, bold = true },
    FloatFooter = { fg = p.comment, bg = p.bg_alt },

    ColorColumn = { bg = p.bg_high },
    Conceal = { fg = p.comment },
    Cursor = { fg = p.bg, bg = p.fg },
    lCursor = { fg = p.bg, bg = p.fg },
    CursorIM = { fg = p.bg, bg = p.fg },
    TermCursor = { fg = p.bg, bg = p.cyan },
    CursorLine = { bg = p.cursorline },
    CursorColumn = { bg = p.cursorline },
    CursorLineNr = { fg = p.gutter_active, bg = p.cursorline, bold = true },
    LineNr = { fg = p.gutter, bg = p.bg },
    LineNrAbove = { fg = p.gutter, bg = p.bg },
    LineNrBelow = { fg = p.gutter, bg = p.bg },
    SignColumn = { fg = p.gutter, bg = p.bg },
    FoldColumn = { fg = p.gutter, bg = p.bg },
    Folded = { fg = p.fg_dim, bg = p.bg_alt },

    Directory = { fg = p.cyan },
    EndOfBuffer = { fg = p.bg },
    NonText = { fg = p.gutter },
    Whitespace = { fg = p.border },
    SpecialKey = { fg = p.gutter },

    ErrorMsg = { fg = p.red, bold = true },
    WarningMsg = { fg = p.amber },
    ModeMsg = { fg = p.fg_dim, bold = true },
    MsgArea = { fg = p.fg },
    MsgSeparator = { fg = p.border },
    MoreMsg = { fg = p.cyan },
    Question = { fg = p.cyan },

    Pmenu = { fg = p.fg, bg = p.bg_alt },
    PmenuSel = { fg = p.fg_bright, bg = p.bg_sel, bold = true },
    PmenuSbar = { bg = p.bg_alt },
    PmenuThumb = { bg = p.border },
    PmenuKind = { fg = p.cyan, bg = p.bg_alt },
    PmenuKindSel = { fg = p.cyan, bg = p.bg_sel },
    PmenuExtra = { fg = p.comment, bg = p.bg_alt },
    PmenuExtraSel = { fg = p.fg_dim, bg = p.bg_sel },
    WildMenu = { fg = p.bg, bg = p.cyan },

    QuickFixLine = { bg = p.bg_high, bold = true },

    Search = { fg = p.fg_bright, bg = p.search },
    IncSearch = { fg = p.bg, bg = p.cyan, bold = true },
    CurSearch = { fg = p.bg, bg = p.cyan_bright, bold = true },
    Substitute = { fg = p.bg, bg = p.amber, bold = true },

    StatusLine = { fg = p.fg, bg = p.bg_alt },
    StatusLineNC = { fg = p.comment, bg = p.bg_dark },
    TabLine = { fg = p.fg_dim, bg = p.bg_dark },
    TabLineFill = { bg = p.bg_dark },
    TabLineSel = { fg = p.fg_bright, bg = p.bg, bold = true },

    WinBar = { fg = p.fg_dim, bg = p.bg },
    WinBarNC = { fg = p.comment, bg = p.bg },
    WinSeparator = { fg = p.border, bg = p.bg },
    VertSplit = { fg = p.border, bg = p.bg },

    Visual = { bg = p.visual },
    VisualNOS = { bg = p.visual },
    MatchParen = { fg = p.cyan, bold = true },
    Title = { fg = p.cyan, bold = true },

    SpellBad = { sp = p.red, undercurl = true },
    SpellCap = { sp = p.amber, undercurl = true },
    SpellLocal = { sp = p.cyan, undercurl = true },
    SpellRare = { sp = p.magenta, undercurl = true },

    DiffAdd = { bg = p.diff_add },
    DiffChange = { bg = p.diff_change },
    DiffDelete = { fg = p.git_delete, bg = p.diff_delete },
    DiffText = { bg = p.diff_text, bold = true },

    Added = { fg = p.git_add },
    Changed = { fg = p.git_change },
    Removed = { fg = p.git_delete },
  }
end
