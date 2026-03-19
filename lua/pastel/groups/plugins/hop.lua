local function callback(c)
  return {
    HopNextKey = { fg = c.red, bold = true },
    HopNextKey1 = { fg = c.cyan, bold = true },
    HopNextKey2 = { fg = c.blue },
    HopUnmatched = { fg = c.mute },
  }
end

return callback
