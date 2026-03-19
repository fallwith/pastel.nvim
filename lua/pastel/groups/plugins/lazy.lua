local function callback(c)
  return {
    LazyH1 = { fg = c.base, bg = c.accent, bold = true }, -- home button
    LazyH2 = { fg = c.accent, bold = true }, -- titles
    LazyComment = "Comment",
    LazyNormal = "NormalFloat",
    LazyCommit = { fg = c.inactive_text, bold = true }, -- commit ref
    LazyCommitIssue = { fg = c.yellow },
    LazyCommitType = { fg = c.accent, bold = true }, -- conventional commit type
    LazyCommitScope = { italic = true }, -- conventional commit scope
    LazyDimmed = "Conceal", -- property
    LazyProp = "Conceal", -- property
    LazyValue = { fg = c.green }, -- value of a property
    LazyNoCond = "DiagnosticWarn", -- unloaded icon for a plugin where `cond()` was false
    LazyLocal = { fg = c.yellow },
    LazyProgressDone = { fg = c.green }, -- progress bar done
    LazyProgressTodo = "LineNr", -- progress bar todo
    LazySpecial = { fg = c.blue },
    LazyReasonRuntime = { fg = c.yellow },
    LazyReasonPlugin = { fg = c.blue },
    LazyReasonEvent = { fg = c.yellow },
    LazyReasonKeys = { fg = c.purple },
    LazyReasonStart = { fg = c.red },
    LazyReasonSource = { fg = c.green },
    LazyReasonFt = { fg = c.cyan },
    LazyReasonCmd = { fg = c.orange },
    LazyReasonImport = { fg = c.text },
    LazyButton = "CursorLine",
    LazyButtonActive = "Visual",
    LazyTaskOutput = { fg = c.text }, -- task output
    LazyTaskError = { fg = c.red }, -- task errors
    LazyDir = { fg = c.orange }, -- directory
    LazyUrl = { fg = c.blue, underline = true }, -- url
  }
end

return callback
