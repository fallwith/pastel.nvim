local function callback(c, opts)
  return {
    -- identifiers
    ["@variable"] = "Identifier",
    ["@variable.builtin"] = {
      fg = opts.simple_syntax and c.active_text or c.purple,
      bold = opts.simple_syntax,
    },
    ["@variable.parameter"] = {
      fg = opts.simple_syntax and c.active_text or c.orange,
    },
    ["@variable.parameter.builtin"] = "@variable.parameter",
    ["@variable.member"] = "@property",

    ["@constant"] = "Constant",
    ["@constant.builtin"] = "@constant",
    ["@constant.macro"] = "@constant",

    ["@module"] = "Keyword",
    ["@module.builtin"] = { fg = c.yellow },
    ["@label"] = "Label",

    -- literals
    ["@string"] = "String",
    ["@string.documentation"] = "String",
    ["@string.regexp"] = "String",
    ["@string.escape"] = { fg = c.red },
    ["@string.special"] = "String",
    ["@string.special.symbol"] = "String",
    ["@string.special.url"] = "@markup.link.url",
    ["@string.special.path"] = "String",

    ["@character"] = "Character",
    ["@character.special"] = "SpecialChar",

    ["@boolean"] = "Boolean",
    ["@number"] = "Number",
    ["@number.float"] = "Float",

    -- types
    ["@type"] = "Type",
    ["@type.builtin"] = { fg = c.yellow },
    ["@type.definition"] = "@type",

    ["@attribute"] = { fg = c.yellow },
    ["@attribute.builtin"] = "@attribute",
    ["@property"] = { fg = opts.simple_syntax and c.active_text or c.red },

    -- function
    ["@function"] = "Function",
    ["@function.builtin"] = { fg = opts.simple_syntax and c.blue or c.purple },
    ["@function.call"] = "@function",
    ["@function.macro"] = { fg = c.yellow },

    ["@function.method"] = "@function",
    ["@function.method.call"] = "@function.method",

    ["@constructor"] = "@function",
    ["@operator"] = "Operator",

    -- keyword
    ["@keyword"] = "Keyword",
    ["@keyword.corotine"] = "Keyword",
    ["@keyword.function"] = "Keyword",
    ["@keyword.operator"] = "Keyword",
    ["@keyword.import"] = "Include",
    ["@keyword.type"] = "Typedef",
    ["@keyword.modifier"] = "Structure",
    ["@keyword.repeat"] = "Repeat",
    ["@keyword.return"] = "Keyword",
    ["@keyword.debug"] = "Debug",
    ["@keyword.exception"] = "Exception",

    ["@keyword.conditional"] = "Conditional",
    ["@keyword.conditional.ternary"] = "@keyword.conditional",

    ["@keyword.directive"] = "Keyword",
    ["@keyword.directive.define"] = "Keyword",

    -- punctuation
    ["@punctuation.delimiter"] = { fg = c.active_text },
    ["@punctuation.bracket"] = { fg = c.active_text },
    ["@punctuation.special"] = { fg = c.active_text },
    ["@punctuation.bracket.php"] = { fg = c.purple, bold = true },

    -- comment
    ["@comment"] = "Comment",
    ["@comment.documentation"] = "@comment",

    ["@comment.error"] = "DiagnosticError",
    ["@comment.warning"] = "DiagnosticWarn",
    ["@comment.hint"] = "DiagnosticHint",
    ["@comment.info"] = "DiagnosticInfo",
    ["@comment.todo"] = { fg = c.yellow },

    -- markup
    ["@markup.strong"] = { fg = c.active_text, bold = true },
    ["@markup.italic"] = { fg = c.active_text, italic = true },
    ["@markup.strikethrough"] = { fg = c.active_text, strikethrough = true },
    ["@markup.underline"] = "Underline",

    ["@markup.heading"] = { fg = c.active_text, bold = true },
    ["@markup.heading.1.markdown"] = { fg = c.purple, bold = true },
    ["@markup.heading.2.markdown"] = { fg = c.blue, bold = true },
    ["@markup.heading.3.markdown"] = { fg = c.purple, bold = true },
    ["@markup.heading.4.markdown"] = { fg = c.green, bold = true },
    ["@markup.heading.5.markdown"] = { fg = c.yellow, bold = true },
    ["@markup.heading.6.markdown"] = { fg = c.yellow, bold = true },

    ["@markup.quote"] = { fg = c.active_text, italic = true },
    ["@markup.math"] = { fg = c.blue },
    ["@markup.environment"] = { fg = c.orange },

    ["@markup.link"] = { fg = c.yellow, bold = true },
    ["@markup.link.label"] = "String",
    ["@markup.link.url"] = { fg = c.blue, italic = true, underline = true },

    ["@markup.raw"] = { fg = c.red },
    ["@markup.raw.block"] = { fg = c.active_text },

    ["@markup.list"] = "Special",
    ["@markup.list.markdown"] = { fg = c.orange, bold = true },
    ["@markup.list.unchecked"] = { fg = c.blue, bold = true },
    ["@markup.list.checked"] = { fg = c.purple, bold = true },

    ["@diff.plus"] = "DiffAdded",
    ["@diff.minus"] = "DiffDelete",
    ["@diff.delta"] = "DiffChange",

    ["@tag"] = { fg = c.red },
    ["@tag.attribute"] = { fg = c.purple },
    ["@tag.delimiter"] = { fg = c.active_text },

    -- None-highlighting captures
    -- ["@none"] = {},
    -- ["@conceal"] = {},

    -- ["@spell"] = {},
    -- ["@nospell"] = {},

    -----------------------
    -- Language Specific --
    -----------------------

    -- cpp
    ["@property.cpp"] = { fg = c.orange },

    -- css
    ["@number.css"] = { fg = c.purple },
    ["@property.css"] = { fg = c.orange },
    ["@property.class.css"] = { fg = c.yellow },
    ["@property.id.css"] = { fg = c.blue },
    ["@string.plain.css"] = { fg = c.green },
    ["@type.tag.css"] = { fg = c.purple },
    ["@type.css"] = { fg = c.orange },

    -- json
    ["@label.json"] = { fg = c.blue },

    -- lua
    ["@constructor.lua"] = { fg = c.orange },
    ["@variable.lua"] = "@variable",

    -- PHP
    ["@type.qualifier.php"] = "Keyword",
    ["@function.method.php"] = "Function",
    ["@function.method.call.php"] = "Function",

    -- Ruby
    ["@string.special.symbol.ruby"] = { fg = c.orange },

    -- rust
    ["@constant.rust"] = { fg = c.purple },
    ["@function.macro.rust"] = { fg = c.red },
    ["@module.rust"] = { fg = c.purple },
    ["@punctuation.special.rust"] = { fg = c.purple },
    ["@type.rust"] = { fg = c.purple },

    -- toml
    ["@property.toml"] = { fg = c.red },

    -- typescript
    ["@type.qualifier.typescript"] = "Keyword",
    ["@constructor.typescript"] = { fg = c.purple },

    -- TSX (Typescript React)
    ["@constructor.tsx"] = { fg = c.purple },
    ["@tag.attribute.tsx"] = { fg = c.purple, italic = true },

    -- yaml
    ["@field.yaml"] = { fg = c.red },

    ------------
    -- LEGACY --
    ------------

    ["@error"] = "Error",
    ["@string.regex"] = "@string.regexp",
    ["@float"] = "@number.float",
    ["@parameter"] = "@variable.parameter",
    ["@field"] = "@variable.member",

    ["@symbol"] = "@string.special.symbol",
    ["@namespace"] = "@module",
    ["@namespace.builtin"] = "@module.builtin",

    ["@text"] = { fg = c.active_text },
    ["@text.strong"] = "@markup.strong",
    ["@text.emphasis"] = "@markup.emphasis",
    ["@text.strike"] = "@markup.strikethrough",
    ["@text.underline"] = "@markup.underline",

    ["@text.title"] = "@markup.heading",
    ["@text.title.1.markdown"] = "@markup.heading.1.markdown",
    ["@text.title.2.markdown"] = "@markup.heading.2.markdown",
    ["@text.title.3.markdown"] = "@markup.heading.3.markdown",
    ["@text.title.4.markdown"] = "@markup.heading.4.markdown",
    ["@text.title.5.markdown"] = "@markup.heading.5.markdown",

    ["@text.quote"] = "@markup.quote",
    ["@text.math"] = "@markup.math",
    ["@text.environment"] = "@markup.environment",
    ["@text.environment.name"] = "@markup.environment",

    ["@text.literal"] = "@markup.raw",
    ["@text.uri"] = "@markup.link.url",
    ["@text.reference"] = "@markup.link",

    ["@text.todo"] = "@comment.todo",
    ["@text.note"] = "@comment.hint",
    ["@text.todo.note"] = "@text.note",
    ["@text.warning"] = "@comment.warning",
    ["@text.todo.warning"] = "@text.warning",
    ["@text.danger"] = "@comment.error",
    ["@text.todo.danger"] = "@text.danger",
    ["@text.unchecked"] = "@markup.list.unchecked",
    ["@text.todo.unchecked"] = "@text.unchecked",
    ["@text.checked"] = "@markup.list.checked",
    ["@text.todo.checked"] = "@text.checked",

    ["@text.diff.add"] = "@diff.plus",
    ["@text.diff.delete"] = "@diff.minus",

    ["@method"] = "@function",
    ["@method.call"] = "@function.method",

    ["@keyword.export"] = "@keyword",
    ["@keyword.storage"] = "StorageClass",
    ["@storageclass"] = "@keyword.storageclass",
    ["@conditional"] = "@keyword.conditional",
    ["@conditional.ternary"] = "@keyword.conditional.ternary",

    ["@repeat"] = "@keyword.repeat",
    ["@debug"] = "@keyword.debug",
    ["@include"] = "@keyword.include",
    ["@exception"] = "@keyword.exception",

    ["@preproc"] = "@keyword.directive",
    ["@define"] = "@keyword.directive.define",

    ["@type.qualifier"] = "@type",

    -- semantic tokens
    ["@annotation"] = { fg = c.yellow },
    ["@class"] = { fg = c.purple },
    ["@decorator"] = { fg = c.orange },
    ["@enum"] = { fg = c.purple },
    ["@enumMember"] = { fg = c.orange },
    ["@event"] = { fg = c.orange },
    ["@interface"] = { fg = c.orange },
    ["@modifier"] = { fg = c.orange },
    ["@regexp"] = { fg = c.purple },
    ["@struct"] = { fg = c.blue },
    ["@typeParameter"] = { fg = c.yellow },

    -----------------------
    -- Language Specific --
    -----------------------
    -- markdown
    ["@literal.markdown"] = { fg = c.green },
    ["@none.markdown"] = { fg = c.active_text },
    ["@punctuation.delimiter.markdown"] = "@punctuation.delimiter",
    ["@punctuation.special.markdown"] = "@punctuation.special",
    ["@title.markdown"] = "markup.heading",

    -- PHP
    ["@method.php"] = "@function.method.php",
    ["@method.call.php"] = "@function.method.call.php",

    -- Ruby
    ["@symbol.ruby"] = "@string.special.symbol.ruby",

    -- rust
    ["@namespace.rust"] = "@module.rust",
  }
  -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
end

return callback
