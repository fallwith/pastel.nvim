local function callback(c)
	return {
		TodoFgNOTE = { fg = c.cyan },
		TodoFgTODO = { fg = c.blue },
		TodoFgWARNING = { fg = c.yellow },
		TodoFgHACK = { fg = c.yellow },
		TodoFgBUG = { fg = c.red },
		TodoFgPERF = { fg = c.purple },
		TodoFgTEST = { fg = c.red },

		TodoBgNOTE = { bg = c.cyan, fg = c.base, bold = true },
		TodoBgTODO = { bg = c.blue, fg = c.base, bold = true },
		TodoBgWARNING = { bg = c.yellow, fg = c.base, bold = true },
		TodoBgHACK = { bg = c.yellow, fg = c.base, bold = true },
		TodoBgBUG = { bg = c.red, fg = c.base, bold = true },
		TodoBgPERF = { bg = c.purple, fg = c.base, bold = true },
		TodoBgTEST = { bg = c.blue, fg = c.base, bold = true },

		TodoSignNOTE = { fg = c.cyan, bold = true },
		TodoSignTODO = { fg = c.blue, bold = true },
		TodoSignWARNING = { fg = c.yellow, bold = true },
		TodoSignHACK = { fg = c.yellow, bold = true },
		TodoSignBUG = { fg = c.red, bold = true },
		TodoSignPERF = { fg = c.purple, bold = true },
		TodoSignTEST = { fg = c.red, bold = true },
	}
end

return callback
