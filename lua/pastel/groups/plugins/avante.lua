---@param c AstroThemePalette
return function(c)
  return {
    AvanteTitle = { fg = c.title, bg = c.base },
    AvanteReversedTitle = { fg = c.base },
    AvanteSubtitle = { fg = c.green, bg = c.base },
    AvanteReversedSubtitle = { fg = c.base },
    AvanteThirdTitle = { fg = c.yellow, bg = c.base },
    AvanteReversedThirdTitle = { fg = c.base },
    AvanteConflictCurrent = "DiffText",
    AvanteConflictIncoming = "DiffAdd",
  }
end
