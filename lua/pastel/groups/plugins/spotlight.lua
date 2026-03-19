local function callback(c, opts)
  local bg = (opts.float and c.base) or (opts.transparent and c.none) or c.base

  return {
    SpotlightTitle = {
      fg = (opts.invert_title and c.base) or c.title,
      bg = (opts.invert_title and c.title) or (opts.transparent and c.none) or c.base,
      blend = opts.invert_title and 0 or nil,
      bold = true,
    },
    SpotlightBorder = {
      fg = opts.border and c.border or c.base,
      bg = bg,
    },
    SpotlightNormal = {
      fg = c.text,
      bg = bg,
    },
    SpotlightWinSeparator = {
      fg = c.inactive_base,
      bg = opts.transparent and c.none or c.inactive_base,
    },
    SpotlightNormalNC = {
      fg = c.active_text,
      bg = opts.transparent and c.none or c.inactive_base,
    },
  }
end

return callback
