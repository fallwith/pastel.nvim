local function callback(c)
  return {
    NvimTreeFolderIcon = { fg = c.blue },
    NvimTreeExecFile = { fg = c.green },
    NvimTreeOpenedFile = { fg = c.green },
    NvimTreeRootFolder = { fg = c.base },
    NvimTreeEndOfBuffer = { fg = c.base },
    NvimTreeNormal = { bg = c.tabline },
    NvimTreeNormalNC = { bg = c.tabline },
    NvimTreeVertSplit = { fg = c.tabline, bg = c.tabline },
    NvimTreeImageFile = { fg = c.purple },
    NvimTreeSymlink = { fg = c.cyan },
    NvimTreeSpecialFile = { fg = c.yellow },
    NvimTreeGitDeleted = { fg = c.red },
    NvimTreeGitMerge = { fg = c.orange },
    NvimTreeGitRenamed = { fg = c.purple },
    NvimTreeGitStaged = { fg = c.green },
    NvimTreeGitDirty = { fg = c.red },
    NvimTreeGitNew = { fg = c.yellow },
  }
end

return callback
