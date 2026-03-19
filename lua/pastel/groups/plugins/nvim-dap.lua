local function callback(c)
	return {
		DapBreakpoint = { fg = c.cyan, bold = true },
		DapBreakpointCondition = { fg = c.blue, bold = true },
		DapBreakpointRejected = { fg = c.red, bold = true },
		DapLogPoint = { fg = c.yellow, bold = true },
		DapStopped = { fg = c.green, bold = true },
    DapBreakpointUnverified = { fg = c.inactive_text, bold = true },
    DapBreakpointDisabled = { fg = c.inactive_text, bold = true },
		DapBreakpointHit = { fg = c.green, bold = true },
		DapBreakpointFunction = { fg = c.purple, bold = true },
		DapBreakpointData = { fg = c.blue, bold = true },
		DapBreakpointException = { fg = c.orange, bold = true },
		DapStoppedLine = { bg = c.none_text, bold = true },
	}
end

return callback
