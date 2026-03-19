local function callback(c)
  return {
    MasonNormal = "NormalFloat",
    MasonHeader = "FloatTitle",
    MasonHeaderSecondary = { bold = true, fg = c.base, bg = c.blue },

    MasonHighlight = { fg = c.blue },
    MasonHighlightBlock = { bg = c.blue, fg = c.base },
    MasonHighlightBlockBold = { bg = c.accent, fg = c.base, bold = true },

    MasonHighlightSecondary = { fg = c.accent },
    MasonHighlightBlockSecondary = { bg = c.accent, fg = c.base },
    MasonHighlightBlockBoldSecondary = { bg = c.accent, fg = c.base, bold = true },

    MasonLink = "MasonHighlight",

    MasonMuted = { fg = c.red },
    MasonMutedBlock = "CursorLine",
    MasonMutedBlockBold = { bg = c.blue, fg = c.base, bold = true },

    MasonError = "ErrorMsg",
    MasonWarning = "WarningMsg",

    MasonHeading = { bold = true },
  }
end

return callback
