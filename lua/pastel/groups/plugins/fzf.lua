local function callback(c, opts)
  local bg = (opts.border and opts.inactive and c.base) or (opts.float and c.prompt) or c.prompt
  return {
    FzfLuaBorder = {
      fg = (opts.border and c.border) or (opts.inactive and c.base) or (opts.float and c.prompt) or c.base,
      bg = bg,
    },
    FzfLuaTitle = {
      fg = (opts.invert_title and c.float) or c.title,
      bg = (opts.invert_title and c.title)
        or (opts.inactive and c.base)
        or (opts.transparent and opts.float and c.base)
        or (opts.float and c.float)
        or (opts.transparent and c.none)
        or c.base,
      bold = true,
    },
    FzfLuaHeaderBind = {
      fg = c.cyan,
    },
    FzfLuaPathLineNr = {
      fg = c.green,
    },
    FzfLuaHeaderText = {
      fg = c.red,
    },
  }
end

return callback
