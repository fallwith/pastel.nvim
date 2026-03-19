local function callback(c)
	return {
		TreesitterContext = { bg = c.base },
		TreesitterContextBottom = { bg = c.base},
    TreesitterContextSeparator =  { fg = c.inactive_text, bold = true },
	}
end

return callback
