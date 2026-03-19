local function callback(c)
  return {
    TSRainbowRed = { fg = c.red },
    TSRainbowYellow = { fg = c.yellow },
    TSRainbowBlue = { fg = c.blue },
    TSRainbowOrange = { fg = c.orange },
    TSRainbowGreen = { fg = c.green },
    TSRainbowViolet = { fg = c.purple },
    TSRainbowCyan = { fg = c.cyan },
  }
end

return callback
