local function callback(c)
  return {
    RainbowRed = { fg = c.red },
    RainbowYellow = { fg = c.yellow },
    RainbowBlue = { fg = c.blue },
    RainbowOrange = { fg = c.orange },
    RainbowGreen = { fg = c.green },
    RainbowViolet = { fg = c.purple },
    RainbowCyan = { fg = c.cyan },

    IndentBlanklineChar = { fg = c.none_text },
    IndentBlanklineContextStart = { fg = c.active_text, underline = true },
    IndentBlanklineContextChar = { fg = c.text },
    IndentBlanklineSpaceCharBlankline = { fg = c.none_text },
    IndentBlanklineSpaceshar = { fg = c.none_text },
    IblIndent = { fg = c.none_text },
    IblWhitespace = { fg = c.none_text },
    IblScope = { fg = c.text },
  }
end

return callback
