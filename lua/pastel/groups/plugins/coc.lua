function callback(c)
	return {
		CocErrorSign = { fg = c.red },
		CocWarningSign = { fg = c.yellow },
		CocInfoSign = { fg = c.blue },
		CocHintSign = { fg = c.cyan },
		CocFloating = { bg = c.float },
		CocBorder = { fg = c.border },
		CocMenuSel = { bg = c.blue, fg = c.base },
		CocSearch = { fg = c.match, bold = true },
	}
end

return callback
