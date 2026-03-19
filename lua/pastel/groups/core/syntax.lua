local function callback(c, opts)
  return {
    -- Comment
    Comment = { fg = c.comment, bg = c.none, italic = true }, -- any comment
    -- Constant
    Constant = { fg = opts.simple_syntax and c.cyan or c.yellow, bg = c.none }, -- any constant
    String = { fg = c.green, bg = c.none }, -- a string constant: "this is a string"
    Character = { fg = c.green, bg = c.none }, -- a character constant: 'c', '\n'
    Number = { fg = c.orange, bg = c.none }, -- a number constant: 234, 0xff
    Boolean = { fg = c.orange, bg = c.none }, -- a boolean constant: TRUE, false
    Float = { fg = c.yellow, bg = c.none }, -- a floating point constant: 2.3e10
    -- Identifier
    Identifier = { fg = c.active_text, bg = c.none }, -- any variable name
    Function = { fg = c.blue, bg = c.none }, -- function name (also: methods for classes)
    -- Statement
    Statement = { fg = c.purple, bg = c.none }, -- any statement
    Conditional = { fg = c.purple, bg = c.none }, -- if, then, else, endif, switch, etc.
    Repeat = { fg = c.purple, bg = c.none }, -- for, do, while, etc.
    Label = { fg = c.blue, bg = c.none }, -- case, default, etc.
    Operator = { fg = opts.simple_syntax and c.purple or c.active_text, bg = c.none }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = c.yellow, bg = c.none }, -- any other keyword
    Exception = { fg = c.purple, bg = c.none }, -- try, catch, throw
    -- Preproc
    PreProc = { fg = c.yellow, bg = c.none }, -- generic Preprocessor
    Include = { fg = c.purple, bg = c.none }, -- preprocessor #include
    Define = { fg = c.purple, bg = c.none }, -- preprocessor #define
    Macro = { fg = c.orange, bg = c.none }, -- same as Define
    PreCondit = { fg = c.blue, bg = c.none }, -- preprocessor #if, #else, #endif, etc.
    -- Type
    Type = { fg = c.blue, bg = c.none }, -- int, long, char, etc.
    StorageClass = { fg = c.blue, bg = c.none }, -- static, register, volatile, etc.
    Structure = { fg = c.yellow, bg = c.none }, -- struct, union, enum, etc.
    Typedef = { fg = c.yellow, bg = c.none }, -- A typedef
    -- Special
    Special = { fg = c.blue, bg = c.none }, -- any special symbol
    SpecialChar = { fg = c.blue, bg = c.none }, -- special character in a constant
    Tag = { fg = c.blue, bg = c.none }, -- you can use CTRL-] on this
    Delimiter = { fg = c.blue, bg = c.none }, -- character that needs attention
    SpecialComment = { fg = c.none_text, bg = c.none }, -- special things inside a comment
    Debug = { fg = c.blue, bg = c.none }, -- debugging statements
    -- Underlined
    Underlined = { fg = c.cyan, bg = c.none, underline = true }, -- text that stands out, HTML links
    -- Ignore
    Ignore = { fg = c.none, bg = c.none }, -- left blank, hidden  |hl-Ignore|
    -- Error
    Error = { fg = c.red, bg = c.none }, -- any erroneous construct
    -- Todo
    Todo = { fg = c.yellow, bg = c.none }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  }
end
return callback
