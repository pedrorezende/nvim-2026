-- Legacy vim syntax groups (fallback for filetypes without treesitter).
return function(p)
  return {
    Comment = { fg = p.comment, italic = true },

    Constant = { fg = p.amber },
    String = { fg = p.string },
    Character = { fg = p.string },
    Number = { fg = p.amber },
    Float = { fg = p.amber },
    Boolean = { fg = p.amber },

    Identifier = { fg = p.fg },
    Function = { fg = p.cyan },

    Statement = { fg = p.keyword, italic = true },
    Conditional = { fg = p.keyword, italic = true },
    Repeat = { fg = p.keyword, italic = true },
    Label = { fg = p.keyword },
    Operator = { fg = p.operator },
    Keyword = { fg = p.keyword, italic = true },
    Exception = { fg = p.keyword, italic = true },

    PreProc = { fg = p.cyan_dim },
    Include = { fg = p.keyword, italic = true },
    Define = { fg = p.cyan_dim },
    Macro = { fg = p.cyan_dim },
    PreCondit = { fg = p.cyan_dim },

    Type = { fg = p.type },
    StorageClass = { fg = p.keyword, italic = true },
    Structure = { fg = p.type },
    Typedef = { fg = p.type },

    Special = { fg = p.cyan_dim },
    SpecialChar = { fg = p.amber },
    Tag = { fg = p.cyan },
    Delimiter = { fg = p.punct },
    SpecialComment = { fg = p.fg_dim, italic = true },
    Debug = { fg = p.red },

    Underlined = { fg = p.cyan, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = p.comment },
    Error = { fg = p.red },
    Todo = { fg = p.bg, bg = p.amber, bold = true },
  }
end
