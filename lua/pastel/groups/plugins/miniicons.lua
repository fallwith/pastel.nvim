local function callback(c)
  local color = require "pastel.lib.color"
  return {
    MiniIconsAzure = { fg = color.new(c.blue):lighten(35):tohex() },
    MiniIconsBlue = { fg = c.blue },
    MiniIconsCyan = { fg = c.cyan },
    MiniIconsGreen = { fg = c.green },
    MiniIconsGrey = { fg = c.text },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsPurple = { fg = c.purple },
    MiniIconsRed = { fg = c.red },
    MiniIconsYellow = { fg = c.yellow },
  }
end

return callback
