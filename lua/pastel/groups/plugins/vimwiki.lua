local function callback(c)
  return {
    VimwikiLink = { fg = c.cyan, bg = c.none },
    VimwikiHeaderChar = { fg = c.none_text, bg = c.none },
    VimwikiHR = { fg = c.yellow, bg = c.none },
    VimwikiList = { fg = c.orange, bg = c.none },
    VimwikiTag = { fg = c.orange, bg = c.none },
    VimwikiMarkers = { fg = c.none_text, bg = c.none },
    VimwikiHeader1 = { fg = c.orange, bg = c.none, bold = true },
    VimwikiHeader2 = { fg = c.green, bg = c.none, bold = true },
    VimwikiHeader3 = { fg = c.blue, bg = c.none, bold = true },
    VimwikiHeader4 = { fg = c.cyan, bg = c.none, bold = true },
    VimwikiHeader5 = { fg = c.yellow, bg = c.none, bold = true },
    VimwikiHeader6 = { fg = c.purple, bg = c.none, bold = true },
  }
end

return callback
