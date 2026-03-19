local function callback(c)
  return {
    DapUIVariable = "Identifier",
    DapUIScope = "Title",
    DapUIType = "Type",
    DapUIValue = { fg = c.red },
    DapUIModifiedValue = { fg = c.yellow, bold = true },
    DapUIDecoration = { fg = c.none_text },
    DapUIThread = "String",
    DapUIStoppedThread = "Title",
    DapUIFrameName = "Normal",
    DapUISource = "Keyword",
    DapUILineNumber = "Number",
    DapUIFloatBorder = "FloatBorder",
    DapUIWatchesEmpty = { fg = c.red },
    DapUIWatchesValue = { fg = c.orange },
    DapUIWatchesError = { fg = c.red },
    DapUIBreakpointsPath = "Title",
    DapUIBreakpointsInfo = { fg = c.purple },
    DapUIBreakpointsCurrentLine = { fg = c.yellow, bold = true },
    DapUIBreakpointsLine = "DapUILineNumber",
    DapUIBreakpointsDisabledLine = "Comment",
    DapUIPlayPause = { fg = c.green },
    DapUIStop = { fg = c.red },
    DapUIRestart = { fg = c.yellow },
    DapUIStepOver = { fg = c.blue },
    DapUIStepInto = { fg = c.blue },
    DapUIStepBack = { fg = c.blue },
    DapUIStepOut = { fg = c.blue },
  }
end

return callback
