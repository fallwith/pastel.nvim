local function callback(c)
  return {
    LightspeedLabel = { fg = c.red, underline = true },
    LightspeedLabelOverlapped = { fg = c.blue, underline = true },
    LightspeedLabelDistant = { fg = c.red, underline = true },
    LightspeedLabelDistantOverlapped = { fg = c.blue, underline = true },
    LightspeedShortcut = { fg = c.tool, bg = c.red, bold = true, underline = true },
    LightspeedShortcutOverlapped = { fg = c.tool, bg = c.blue, bold = true, underline = true },
    LightspeedMaskedChar = { fg = c.green },
    LightspeedUnlabeledMatch = { fg = c.active_text, bold = true },
    LightspeedUniqueChar = "LightspeedUnlabeledMatch",
    LightspeedGreyWash = "Comment",
    LightspeedOneCharMatch = "LightspeedShortcut",
    LightspeedPendingOpArea = "IncSearch",
    LightspeedCursor = "Cursor",
  }
end

return callback
