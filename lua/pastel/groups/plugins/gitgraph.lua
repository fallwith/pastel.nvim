local function callback(c)
	return {
		GitGraphHash = { fg = c.orange, bg = c.none, bold = true },
		GitGraphTimestamp = { fg = c.yellow, bg = c.none, bold = false },
		GitGraphAuthor = { fg = c.green, bg = c.none, bold = false },
		GitGraphBranchName = { fg = c.blue, bg = c.none, bold = true },
		GitGraphBranchTag = { fg = c.purple, bg = c.none, bold = true },
		GitGraphBranchMsg = { fg = c.text, bg = c.none, bold = false },

		GitGraphBranch1 = { fg = c.red, bg = c.none, bold = true },
		GitGraphBranch2 = { fg = c.orange, bg = c.none, bold = true },
		GitGraphBranch3 = { fg = c.yellow, bg = c.none, bold = true },
		GitGraphBranch4 = { fg = c.green, bg = c.none, bold = true },
		GitGraphBranch5 = { fg = c.cyan, bg = c.none, bold = true },
	}
end

return callback
