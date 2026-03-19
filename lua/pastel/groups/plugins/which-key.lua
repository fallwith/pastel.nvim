local function callback(c)
  return {
    WhichKey = { fg = c.cyan },
    WhichKeyFloat = "NormalFloat",
    WhichKeyBorder = "FloatBorder",
    WhichKeySeparator = { fg = c.none_text },
    WhichKeyDesc = { fg = c.purple },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyValue = { fg = c.active_text },
  }
end

return callback
