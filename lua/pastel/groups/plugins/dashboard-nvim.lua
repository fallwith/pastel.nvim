local function callback(c)
  return {
    DashboardHeader = { fg = c.cyan },
    DashboardShortcut = { fg = c.yellow },
    DashboardFooter = { fg = c.cyan },
    DashboardCenter = { fg = c.blue },
  }
end

return callback
