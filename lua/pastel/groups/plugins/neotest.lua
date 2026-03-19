local function callback(c)
  return {
    NeotestAdapterName = "Title",
    NeotestBorder = { fg = c.border },
    NeotestDir = "Directory",
    NeotestExpandMarker = "Conceal",
    NeotestFailed = "ErrorMsg",
    NeotestFile = "DiffFile",
    NeotestFocused = { underline = true },
    NeotestIndent = "Conceal",
    NeotestMarked = { fg = c.cyan },
    NeotestNamespace = { fg = c.text, bold = true },
    NeotestPassed = "DiagnosticOk",
    NeotestRunning = "DiagnosticWarn",
    NeotestSkipped = "DiagnosticHint",
    NeotestTarget = "DiagnosticInfo",
    NeotestTest = { fg = c.text },
    NeotestUnknown = { fg = c.text },
    NeotestWatching = "DiagnosticInfo",
    NeotestWinSelect = "PmenuSel",
  }
end

return callback
