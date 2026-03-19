local function callback(c, opts)
	local prompt_bg = (opts.border and opts.float and opts.inactive and c.float)
		or (opts.border and opts.float and opts.transparent and c.base)
		or (opts.border and opts.float and c.float)
		or (opts.border and opts.inactive and c.base)
		or (opts.border and opts.transparent and c.none)
		or (opts.border and c.base)
		or c.prompt

	return {
		----------------
		--- Title
		----------------

		-- TelescopeTitle = "FloatTitle",
		TelescopePromptTitle = {
			fg = (opts.invert_title and c.float) or c.title,
			bg = (opts.invert_title and c.title) or prompt_bg,
			bold = true,
		},
		TelescopeResultsTitle = { link = "FloatTitle" },
		TelescopePreviewTitle = { link = "FloatTitle" },

		----------------
		--- Normal
		----------------

		-- TelescopeNormal = "NormalFloat",
		TelescopePromptNormal = { fg = c.text, bg = prompt_bg },
		TelescopeResultsNormal = { link = "NormalFloat" },
		TelescopePreviewNormal = { link = "NormalFloat" },

		----------------
		--- Border
		----------------

		-- TelescopeBorder = "FloatBorder",
		TelescopePromptBorder = {
			fg = (opts.border and opts.float and c.border)
				or (opts.border and opts.inactive and c.border)
				or (opts.border and opts.transparent and c.base)
				or (opts.border and c.border)
				or c.prompt,
			bg = prompt_bg,
		},
		TelescopeResultsBorder = { link = "FloatBorder" },
		TelescopePreviewBorder = { link = "FloatBorder" },

		----------------
		--- Selection
		----------------

		TelescopePromptPrefix = { fg = c.accent, bold = true },
		TelescopeSelectionCaret = { fg = c.accent, bg = c.highlight },
		TelescopeMatching = { fg = c.match, bold = true },
		TelescopeSelection = { bg = c.highlight },
		TelescopeMultiSelection = { bg = c.selection },
		TelescopeMultiIcon = { fg = c.blue },
	}
end

return callback
