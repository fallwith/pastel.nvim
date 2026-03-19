local hl = require("pastel.lib.hl")

-- BufferLine* --> show when buffer is out of focus
-- BufferLineSelected --> show when buffer is selected
-- BufferLineVisible --> show when buffer is not selected

local function callback(c)
	vim.schedule(function()
		-- Bold BufferLineDevIconJava
		local DevIconJava = hl.get("DevIconJava").fg
		hl.set("BufferLineDevIconJava", { fg = DevIconJava, bg = hl.get("BufferLineBuffer").bg, bold = true })
		hl.set(
			"BufferLineDevIconJavaInactive",
			{ fg = DevIconJava, bg = hl.get("BufferLineBufferVisible").bg, bold = true }
		)
		hl.set(
			"BufferLineDevIconJavaSelected",
			{ fg = DevIconJava, bg = hl.get("BufferLineBufferSelected").bg, bold = true }
		)
	end)

	return {
		-----------------------[ Interface ]-----------------------------------------------------
		BufferLineFill = { bg = c.tabline },
		BufferLineSeparator = { fg = c.highlight },
		BufferLineIndicatorSelected = { fg = c.blue, bg = c.base },

		------------------------[ Buffer ]-----------------------------------------------------

		-- Buffer
		BufferLineBufferVisible = { fg = c.inactive_text, bg = c.tabline },
		BufferLineBufferSelected = { fg = c.active_text, bg = c.base, bold = true },
		-- CloseButton
		BufferLineCloseButtonVisible = { fg = c.inactive_text, bg = c.tabline },
		BufferLineCloseButtonSelected = { fg = c.red, bg = c.base },
		-- Modified
		BufferLineModified = { fg = c.inactive_text, bg = c.tabline },
		BufferLineModifiedSelected = { fg = c.yellow, bg = c.base },
		BufferLineModifiedVisible = { fg = c.inactive_text, bg = c.base },

		------------------------[ Tab ]-----------------------------------------------------
		-- Separator
		BufferLineTabSeparator = { fg = c.highlight, bg = c.tabline },
		BufferLineTabSeparatorSelected = { fg = c.highlight, bg = c.tabline },

		BufferLineTab = { fg = c.inactive_text, bg = c.tabline },
		BufferLineTabSelected = { fg = c.accent, bg = c.tabline },
		BufferLineTabClose = { fg = c.red, bg = c.tabline },
	}
end

return callback
