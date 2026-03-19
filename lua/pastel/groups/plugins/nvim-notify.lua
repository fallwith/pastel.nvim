local function callback(c, opts)
  local bg = (opts.transparent and c.none) or c.tool

  return {
    NotifyBackground = {
      fg = c.text,
      bg = c.base,
    },

    NotifyERRORBorder = { fg = c.red, bg = bg },
    NotifyWARNBorder = { fg = c.orange, bg = bg },
    NotifyINFOBorder = { fg = c.green, bg = bg },
    NotifyDEBUGBorder = { fg = c.cyan, bg = bg },
    NotifyTRACERBorder = { fg = c.purple, bg = bg },

    NotifyERRORIcon = { fg = c.red, bg = bg },
    NotifyWARNIcon = { fg = c.orange, bg = bg },
    NotifyINFOIcon = { fg = c.green, bg = bg },
    NotifyDEBUGIcon = { fg = c.cyan, bg = bg },
    NotifyTRACEIcon = { fg = c.purple, bg = bg },

    NotifyERRORTitle = { fg = c.red, bg = bg },
    NotifyWARNTitle = { fg = c.orange, bg = bg },
    NotifyINFOTitle = { fg = c.green, bg = bg },
    NotifyDEBUGTitle = { fg = c.cyan, bg = bg },
    NotifyTRACETitle = { fg = c.purple, bg = bg },

    NotifyERRORBody = { fg = c.text, bg = bg },
    NotifyWARNBody = { fg = c.text, bg = bg },
    NotifyINFOBody = { fg = c.text, bg = bg },
    NotifyDEBUGBody = { fg = c.text, bg = bg },
    NotifyTRACEBody = { fg = c.text, bg = bg },

    NotifyLogTime = { fg = c.inactive_text, bg = bg },
    NotifyLogTitle = { fg = c.blue, bg = bg },
  }
end

return callback
