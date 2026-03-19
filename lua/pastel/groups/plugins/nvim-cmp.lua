local function callback(c)
	return {
		CmpItemAbbr = { fg = c.text },
		CmpItemAbbrDeprecated = { fg = c.red, strikethrough = true },
		CmpItemAbbrMatch = { fg = c.match, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = c.match, bold = true },

		--─────────────────────▶ KIND COLORS ◀───────────────────────────────

		CmpItemKind = "Type",
		CmpItemKindText = "String",
		CmpItemKindVariable = "@function",
		CmpItemKindFunction = "@function",
		CmpItemKindClass = "@class",
		CmpItemKindSnippet = "@constant",

		CmpItemKindColor = "@constant",
		CmpItemKindConstant = "@constant",
		CmpItemKindConstructor = "@constructor",
		CmpItemKindEnum = "@type",
		CmpItemKindEnumMember = "@field",
		CmpItemKindEvent = "@type",
		CmpItemKindField = "@field",
		CmpItemKindFile = "@text.uri",
		CmpItemKindFolder = "@constant",
		CmpItemKindInterface = "@type",
		CmpItemKindKeyword = "@keyword",
		CmpItemKindMethod = "@method",
		CmpItemKindModule = "@namespace",
		CmpItemKindOperator = "@operator",
		CmpItemKindProperty = "@property",
		CmpItemKindReference = "@type",
		CmpItemKimdStruct = "@type",
		CmpItemKindTypeParameter = "@type",
		CmpItemKindUnit = "@constant",
		CmpItemKindValue = "@constant",

		--──────────────────▶ KIND ICON COLORS ◀───────────────────────────────

		CmpItemKind = "Type",
		CmpItemKindTextIcon = "String",
		CmpItemKindVariableIcon = "@function",
		CmpItemKindFunctionIcon = "@function",
		CmpItemKindClassIcon = "@class",
		CmpItemKindSnippetIcon = "@constant",

		CmpItemKindColorIcon = "@constant",
		CmpItemKindConstantIcon = "@constant",
		CmpItemKindConstructorIcon = "@constructor",
		CmpItemKindEnumIcon = "@type",
		CmpItemKindEnumMemberIcon = "@field",
		CmpItemKindEventIcon = "@type",
		CmpItemKindFieldIcon = "@field",
		CmpItemKindFileIcon = "@text.uri",
		CmpItemKindFolderIcon = "@constant",
		CmpItemKindInterfaceIcon = "@type",
		CmpItemKindKeywordIcon = "@keyword",
		CmpItemKindMethodIcon = "@method",
		CmpItemKindModuleIcon = "@namespace",
		CmpItemKindOperatorIcon = "@operator",
		CmpItemKindPropertyIcon = "@property",
		CmpItemKindReferenceIcon = "@type",
		CmpItemKimdStructIcon = "@type",
		CmpItemKindTypeParameterIcon = "@type",
		CmpItemKindUnitIcon = "@constant",
		CmpItemKindValueIcon = "@constant",
	}
end
return callback
