local function callback(c)
  return {
    IndentLine = { fg=c.none_text, bold = true },
    IndentLineCurrent = { fg=c.blue, bold = true },
  }
end

return callback
