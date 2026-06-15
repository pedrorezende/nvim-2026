-- Treesitter captures — the real syntax highlighting for most filetypes.
return function(p)
  return {
    -- comments
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { fg = p.fg_dim, italic = true },
    ["@comment.error"] = { fg = p.red, bold = true },
    ["@comment.warning"] = { fg = p.amber, bold = true },
    ["@comment.todo"] = { fg = p.bg, bg = p.amber, bold = true },
    ["@comment.note"] = { fg = p.bg, bg = p.cyan, bold = true },

    -- variables
    ["@variable"] = { fg = p.fg },
    ["@variable.builtin"] = { fg = p.fg_muted, italic = true },
    ["@variable.parameter"] = { fg = p.parameter, italic = true },
    ["@variable.parameter.builtin"] = { fg = p.parameter, italic = true },
    ["@variable.member"] = { fg = p.property },

    -- constants
    ["@constant"] = { fg = p.amber },
    ["@constant.builtin"] = { fg = p.amber, italic = true },
    ["@constant.macro"] = { fg = p.cyan_dim },

    -- modules & labels
    ["@module"] = { fg = p.type },
    ["@module.builtin"] = { fg = p.type, italic = true },
    ["@label"] = { fg = p.cyan_dim },

    -- strings
    ["@string"] = { fg = p.string },
    ["@string.documentation"] = { fg = p.fg_dim },
    ["@string.regexp"] = { fg = p.cyan_dim },
    ["@string.escape"] = { fg = p.amber, bold = true },
    ["@string.special"] = { fg = p.cyan_dim },
    ["@string.special.symbol"] = { fg = p.amber },
    ["@string.special.path"] = { fg = p.string, underline = true },
    ["@string.special.url"] = { fg = p.cyan, underline = true },
    ["@character"] = { fg = p.string },
    ["@character.special"] = { fg = p.amber },

    -- numbers & booleans
    ["@boolean"] = { fg = p.amber },
    ["@number"] = { fg = p.amber },
    ["@number.float"] = { fg = p.amber },

    -- types
    ["@type"] = { fg = p.type },
    ["@type.builtin"] = { fg = p.type, italic = true },
    ["@type.definition"] = { fg = p.type },
    ["@attribute"] = { fg = p.cyan_dim },
    ["@attribute.builtin"] = { fg = p.cyan_dim },
    ["@property"] = { fg = p.property },

    -- functions
    ["@function"] = { fg = p.cyan },
    ["@function.builtin"] = { fg = p.cyan, italic = true },
    ["@function.call"] = { fg = p.cyan },
    ["@function.macro"] = { fg = p.cyan_dim },
    ["@function.method"] = { fg = p.cyan },
    ["@function.method.call"] = { fg = p.cyan },
    ["@constructor"] = { fg = p.type },

    -- operators & keywords
    ["@operator"] = { fg = p.operator },
    ["@keyword"] = { fg = p.keyword, italic = true },
    ["@keyword.function"] = { fg = p.keyword, italic = true },
    ["@keyword.operator"] = { fg = p.keyword },
    ["@keyword.import"] = { fg = p.keyword, italic = true },
    ["@keyword.type"] = { fg = p.keyword, italic = true },
    ["@keyword.modifier"] = { fg = p.keyword, italic = true },
    ["@keyword.repeat"] = { fg = p.keyword, italic = true },
    ["@keyword.return"] = { fg = p.keyword, italic = true },
    ["@keyword.debug"] = { fg = p.red },
    ["@keyword.exception"] = { fg = p.keyword, italic = true },
    ["@keyword.conditional"] = { fg = p.keyword, italic = true },
    ["@keyword.conditional.ternary"] = { fg = p.operator },
    ["@keyword.directive"] = { fg = p.cyan_dim },
    ["@keyword.directive.define"] = { fg = p.cyan_dim },
    ["@keyword.coroutine"] = { fg = p.keyword, italic = true },

    -- punctuation
    ["@punctuation.delimiter"] = { fg = p.punct },
    ["@punctuation.bracket"] = { fg = p.punct },
    ["@punctuation.special"] = { fg = p.cyan_dim },

    -- markup tags (html/jsx)
    ["@tag"] = { fg = p.cyan_dim },
    ["@tag.builtin"] = { fg = p.cyan_dim },
    ["@tag.attribute"] = { fg = p.property, italic = true },
    ["@tag.delimiter"] = { fg = p.punct },

    -- markup (markdown, prose)
    ["@markup.heading"] = { fg = p.cyan, bold = true },
    ["@markup.heading.1"] = { fg = p.cyan, bold = true },
    ["@markup.heading.2"] = { fg = p.cyan_bright, bold = true },
    ["@markup.heading.3"] = { fg = p.amber, bold = true },
    ["@markup.heading.4"] = { fg = p.type, bold = true },
    ["@markup.heading.5"] = { fg = p.fg_muted, bold = true },
    ["@markup.heading.6"] = { fg = p.comment, bold = true },
    ["@markup.strong"] = { fg = p.fg_bright, bold = true },
    ["@markup.italic"] = { fg = p.fg, italic = true },
    ["@markup.strikethrough"] = { fg = p.comment, strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.quote"] = { fg = p.fg_dim, italic = true },
    ["@markup.math"] = { fg = p.amber },
    ["@markup.link"] = { fg = p.cyan },
    ["@markup.link.label"] = { fg = p.cyan_dim },
    ["@markup.link.url"] = { fg = p.cyan, underline = true },
    ["@markup.raw"] = { fg = p.string },
    ["@markup.raw.block"] = { fg = p.fg_dim },
    ["@markup.list"] = { fg = p.amber },
    ["@markup.list.checked"] = { fg = p.green },
    ["@markup.list.unchecked"] = { fg = p.fg_dim },

    -- diff
    ["@diff.plus"] = { fg = p.git_add },
    ["@diff.minus"] = { fg = p.git_delete },
    ["@diff.delta"] = { fg = p.git_change },

    -- legacy (older treesitter capture names, kept for safety)
    ["@text.literal"] = { fg = p.string },
    ["@text.reference"] = { fg = p.cyan },
    ["@text.title"] = { fg = p.cyan, bold = true },
    ["@text.uri"] = { fg = p.cyan, underline = true },
    ["@text.todo"] = { fg = p.bg, bg = p.amber, bold = true },
    ["@namespace"] = { fg = p.type },
  }
end
