local function callback(c)
  return {
    GitSignsAdd = { fg = c.green, bg = c.none },
    GitSignsChange = { fg = c.yellow, bg = c.none },
    GitSignsDelete = { fg = c.red, bg = c.none },
    MoreMsg = { fg = c.text, bold = true },
    ModeMsg = { fg = c.text, bold = true },
  }
end

return callback
