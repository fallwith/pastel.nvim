local function callback(c)
  return {
    WindowPickerStatusLine = { fg = c.red },
    WindowPickerStatusLineNC = { fg = c.red },
    WindowPickerWinBar = { fg = c.red },
    WindowPickerWinBarNC = { fg = c.red },
  }
end

return callback
