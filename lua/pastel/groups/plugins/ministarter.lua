local function callback(c)
  return {
    MiniStarterItem = { fg = c.text },
    MiniStarterQuery = { fg = c.green, bold = true },
    MiniStarterHeader = { fg = c.accent, bg = c.none },
    MiniStarterFooter = { fg = c.accent, bg = c.none },
    MiniStarterCurrent = { fg = c.active_text, underline = true, bold = true },
    MiniStarterSection = { fg = c.accent, bold = true },
    MiniStarterInactive = { fg = c.inactive_text },
    MiniStarterItemBullet = { fg = c.accent },
    MiniStarterItemPrefix = { fg = c.yellow },
  }
end

return callback
