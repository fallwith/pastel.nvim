local function callback(c)
  return {
    NavicIconsFile = { fg=c.blue, bold=true },
    NavicIconsModule = { fg=c.blue, bold=true },
    NavicIconsNamespace = { fg=c.blue, bold=true },
    NavicIconsPackage = { fg=c.blue, bold=true },

    NavicIconsClass = { fg=c.yellow, bold=true },
    NavicIconsMethod = { fg=c.blue, bold=true },
    NavicIconsFunction = { fg=c.purple, bold=true },
    NavicIconsConstructor = { fg=c.blue, bold=true },

    NavicIconsProperty = { fg=c.blue, bold=true },
    NavicIconsField = { fg=c.blue, bold=true },
    NavicIconsVariable = { fg=c.yellow, bold=true },
    NavicIconsConstant = { fg=c.orange, bold=true },

    NavicIconsString = { fg=c.green, bold=true },
    NavicIconsNumber = { fg=c.orange, bold=true },
    NavicIconsBoolean = { fg=c.orange, bold=true },

    NavicIconsEnum = { fg=c.yellow, bold=true },
    NavicIconsEnumMember = { fg=c.purple, bold=true },
    NavicIconsInterface = { fg=c.yellow, bold=true },
    NavicIconsStruct = { fg=c.yellow, bold=true },
    NavicIconsTypeParameter = { fg=c.yellow, bold=true },

    NavicIconsArray = { fg=c.cyan, bold=true },
    NavicIconsObject = { fg=c.cyan, bold=true },
    NavicIconsKey = { fg=c.blue, bold=true },
    NavicIconsNull = { fg=c.red, bold=true },
    NavicIconsEvent = { fg=c.orange, bold=true },
    NavicIconsOperator = { fg=c.purple, bold=true },

    NavicText = { fg=c.text },
    NavicSeparator = { fg=c.gray, bold=true },
  }
end

return callback
