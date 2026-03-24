local function callback(c)
	return {
		SnacksPickerPrompt = { fg = c.blue, bold = true },
		SnacksDashboardHeader = { fg = c.cyan },
		SnacksDashboardFooter = { fg = c.cyan },
		SnacksDashboardSpecial = { fg = c.cyan },
		SnacksPickerSelected = { fg = c.blue },
		SnacksDashboardKey = { fg = c.yellow },
		SnacksPickerBufNr = { fg = c.blue },
		SnacksPickerIdx = { fg = c.blue },
	}
end

return callback
