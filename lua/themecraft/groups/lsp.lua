-- LSP semantic tokens, diagnostics, references, inlay hints.
return function(p)
  return {
    -- semantic tokens (link to treesitter so they stay consistent)
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.macro"] = { link = "@constant.macro" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { fg = p.type, italic = true },
    ["@lsp.type.variable"] = { fg = p.fg },
    ["@lsp.typemod.variable.readonly"] = { fg = p.amber },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = p.fg_muted, italic = true },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = p.cyan, italic = true },
    ["@lsp.typemod.property.readonly"] = { fg = p.property },
    ["@lsp.typemod.keyword.documentation"] = { fg = p.keyword },
    ["@lsp.mod.deprecated"] = { strikethrough = true },

    -- diagnostics
    DiagnosticError = { fg = p.red },
    DiagnosticWarn = { fg = p.amber },
    DiagnosticInfo = { fg = p.cyan },
    DiagnosticHint = { fg = p.blue },
    DiagnosticOk = { fg = p.green },
    DiagnosticUnnecessary = { fg = p.comment, undercurl = true, sp = p.comment },
    DiagnosticDeprecated = { fg = p.comment, strikethrough = true },

    DiagnosticVirtualTextError = { fg = p.red, bg = p.vt_error },
    DiagnosticVirtualTextWarn = { fg = p.amber, bg = p.vt_warn },
    DiagnosticVirtualTextInfo = { fg = p.cyan, bg = p.vt_info },
    DiagnosticVirtualTextHint = { fg = p.blue, bg = p.vt_hint },

    DiagnosticUnderlineError = { undercurl = true, sp = p.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = p.amber },
    DiagnosticUnderlineInfo = { undercurl = true, sp = p.cyan },
    DiagnosticUnderlineHint = { undercurl = true, sp = p.blue },

    DiagnosticFloatingError = { fg = p.red },
    DiagnosticFloatingWarn = { fg = p.amber },
    DiagnosticFloatingInfo = { fg = p.cyan },
    DiagnosticFloatingHint = { fg = p.blue },

    DiagnosticSignError = { fg = p.red },
    DiagnosticSignWarn = { fg = p.amber },
    DiagnosticSignInfo = { fg = p.cyan },
    DiagnosticSignHint = { fg = p.blue },

    -- references & symbols
    LspReferenceText = { bg = p.bg_high },
    LspReferenceRead = { bg = p.bg_high },
    LspReferenceWrite = { bg = p.bg_high, underline = true },
    LspSignatureActiveParameter = { fg = p.cyan, bold = true },
    LspCodeLens = { fg = p.comment, italic = true },
    LspCodeLensSeparator = { fg = p.border },
    LspInlayHint = { fg = p.comment, bg = p.bg_alt, italic = true },
  }
end
