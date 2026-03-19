local function callback(c)
  return {
    NeogitDiffDelete = {
      bg = c.base,
      fg = c.red,
    },
    NeogitDiffDeleteHighlight = {
      bg = c.base,
      fg = c.red,
    },
    NeogitDiffAdd = {
      bg = c.base,
      fg = c.green,
    },
    NeogitDiffAddHighlight = {
      bg = c.base,
      fg = c.green,
    },
    NeogitDiffContextHighlight = {
      bg = c.inactive_base,
    },
    NeogitDiffContext = {
      bg = c.inactive_base,
      fg = c.inactive_text,
    },
    NeogitHunkHeader = {
      bg = c.inactive_text,
      fg = c.active_text,
    },
    NeogitHunkHeaderHighlight = {
      bg = c.purple,
      fg = c.base,
    },
    NeogitHunkHeaderCursor = {
      bg = c.purple,
      fg = c.base,
    },
  }
end

return callback
