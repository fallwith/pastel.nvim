local function callback(c, opts)
  return {
    NeoTreeDirectoryIcon = { fg = c.blue },
    NeoTreeRootName = { fg = c.active_text, bold = true },
    NeoTreeFileName = { fg = c.text },
    NeoTreeFileIcon = { fg = c.text },
    NeoTreeFileNameOpened = { fg = c.green },
    NeoTreeFloatBorder = { fg = c.float },
    NeoTreeFloatTitle = {
      fg = opts.invert_title and c.tool or c.title,
      bg = opts.invert_title and c.title or c.tool,
      bold = true,
    },
    NeoTreeIndentMarker = { fg = c.none_text },

    NeoTreeGitAdded = { fg = c.green },
    NeoTreeGitConflict = { fg = c.red },
    NeoTreeGitDeleted = { fg = c.inactive_text },
    NeoTreeGitIgnored = { fg = c.text },
    NeoTreeGitModified = { fg = c.orange },
    NeoTreeGitRenamed = { fg = c.orange },
    NeoTreeGitStaged = { fg = c.cyan },
    NeoTreeGitUntracked = { fg = c.yellow },
    NeoTreeGitUnstaged = { fg = c.yellow },

    NeoTreeTitleBar = {
      fg = opts.invert_title and c.tool or c.title,
      bg = (opts.invert_title and c.title)
        or (opts.transparent and c.none)
        or c.base,
      bold = true,
    },
    NeoTreeNormal = {
      fg = c.text,
      bg = opts.transparent and c.none or c.base,
    },
    NeoTreeNormalNC = {
      fg = c.text,
      bg = opts.transparent and c.none or c.base,
    },
    NeoTreeSymbolicLinkTarget = { fg = c.cyan },
    NeoTreeTabActive = {
      fg = c.active_text,
      bg = opts.transparent and c.none or c.tool,
      bold = true,
    },
    NeoTreeTabInactive = { fg = c.inactive_text, bg = c.tabline },
    NeoTreeTabSeparatorActive = { fg = c.tool, bg = c.tool },
    NeoTreeTabSeparatorInactive = { fg = c.tabline, bg = c.tabline },
    NeoTreeVertSplit = { fg = c.split, bg = opts.transparent and c.none or c.base },
    NeoTreeWinSeparator = { fg = c.split, bg = opts.transparent and c.none or c.base, bold = true },
    NeoTreeCursorLine = "PmenuSel",
  }
end

return callback
