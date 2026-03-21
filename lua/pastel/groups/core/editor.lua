local function callback(c, opts)

  local float_bg = (opts.border and opts.float and opts.inactive and c.float)
    or (opts.border and opts.float and opts.transparent and c.base)
    or (opts.border and opts.float and c.float)
    or (opts.border and opts.inactive and c.base)
    or (opts.border and opts.transparent and c.none)
    or (opts.float and c.float)
    or (opts.inactive and c.base)
    or (opts.border and c.base)
    or c.base

  return {
    --------------------
    --- Normal
    --------------------
    Normal = { fg = c.active_text, bg = opts.transparent and c.none or c.base },
    NormalNC = {
      fg = c.active_text,
      bg = (opts.transparent and opts.inactive and c.inactive_base)
        or (opts.transparent and c.none)
        or (opts.inactive and c.inactive_base)
        or c.base,
    },

    --------------------
    --- Float
    --------------------
    FloatTitle = {
      fg = (opts.invert_title and c.tool) or c.title,
      bg = (opts.invert_title and c.title) or float_bg,
      bold = true,
    },
    FloatBorder = {
      fg = (opts.border and opts.float and c.border)
        or (opts.border and opts.inactive and c.border)
        or (opts.float and c.float)
        or (opts.transparent and c.base)
        or (opts.border and c.border)
        or c.base,
      bg = float_bg,
    },
    NormalFloat = {
      fg = c.text,
      bg = float_bg,
    },

    --------------------
    --- Text
    --------------------
    Title = {
      fg = (opts.invert_title and c.tool) or c.title,
      bg = (opts.invert_title and c.title) or c.tool,
      bold = true,
    },

    Italic = { italic = true },
    Bold = { bold = true },

    Conceal = { fg = c.inactive_text, bg = c.none },
    SpecialKey = { fg = c.text, bg = c.none },

    ----------------
    --- Tab
    ----------------
    TabLine = { fg = c.inactive_text, bg = c.tabline },
    TabLineSel = { fg = c.active_text, bg = c.base, bold = true, italic = true },
    TabLineFill = { fg = c.none, bg = c.tabline },

    ----------------
    --- Winbar
    ----------------
    WinBar = { fg = c.winbar, bg = c.none },
    WinBarNC = {
      fg = c.inactive_text,
      bg = (opts.transparent and opts.inactive and c.inactive_base)
        or (opts.transparent and c.none)
        or (opts.inactive and c.inactive_base)
        or c.base,
    },

    --------------------
    --- Status
    --------------------
    StatusLine = { fg = c.text, bg = c.statusline },
    StatusLineNC = { fg = c.inactive_text, bg = c.none },
    StatusInactive = { fg = c.tabline, bg = c.inactive_text }, -- TODO: find better inactive color
    StatusNormal = { fg = c.tabline, bg = c.blue },
    StatusInsert = { fg = c.tabline, bg = c.green },
    StatusVisual = { fg = c.tabline, bg = c.purple },
    StatusReplace = { fg = c.tabline, bg = c.red },
    StatusCommand = { fg = c.tabline, bg = c.yellow },
    StatusTerminal = "StatusInsert",

    --------------------
    --- UI
    --------------------
    -- Cursor Area Highlights
    CursorLine = { fg = c.none, bg = opts.transparent and c.none or c.active_line },
    CursorColumn = "CursorLine",

    -- Cursor Block
    Cursor = { fg = c.base, bg = c.text },
    CursorIM = "Cursor",
    lCursor = "Cursor",

    -- Number Status
    LineNr = { fg = c.inactive_text, bg = c.none }, -- inactive numbers
    CursorLineNr = { fg = c.active_text, bg = c.none, bold = true }, -- active line number

    -- Fold Status
    Folded = { fg = c.none, bg = c.none_text, bold = true },
    FoldColumn = { fg = c.none_text, bg = c.none, bold = true },
    FoldedColumn = { fg = c.match, bg = c.none, bold = true },
    CursorFold = { fg = c.active_text, bg = c.none, bold = true },

    -- Sign Status
    SignColumn = { fg = c.none, bg = c.none },
    CursorLineSign = { fg = c.none, bg = c.none },

    WinSeparator = {
      fg = c.split,
      bg = opts.transparent and c.none or c.base,
      bold = false,
    },
    VertSplit = {
      fg = c.split,
      bg = opts.transparent and c.none or c.base,
    },

    NonText = { fg = c.none_text, bg = c.none, },
    EndOfBuffer = { fg = c.base },

    --------------------
    --- Diff
    --------------------
    Added = { fg = c.green },
    Removed = { fg = c.red },
    Changed = { fg = c.orange },
    DiffAdd = { bg = c.blend(c.green, c.base, 0.75) },
    DiffChange = { bg = c.blend(c.yellow, c.base, 0.75) },
    DiffDelete = { bg = c.blend(c.red, c.base, 0.75) },
    DiffText = { bg = c.blend(c.yellow, c.base, 0.7) },
    DiffOldFile = { fg = c.orange },
    DiffNewFile = { fg = c.green },
    DiffFile = { fg = c.blue },
    DiffLine = { fg = c.active_text },
    DiffIndexLine = { fg = c.cyan },

    --------------------
    --- Diagnostics
    --------------------
    ErrorMsg = { fg = c.red, bg = c.none },
    WarningMsg = { fg = c.yellow, bg = c.none },
    Question = { fg = c.purple, bg = c.none },

    --------------------
    --- Menu
    --------------------
    Pmenu = { fg = c.text, bg = c.float },
    PmenuSel = { bg = c.selection, bold = true, blend = 0 },
    PmenuSbar = { fg = c.none, bg = c.float },
    PmenuThumb = { fg = c.none, bg = c.scrollbar, blend = 0 },

    WildMenu = { fg = c.base, bg = c.accent },

    --------------------
    --- Search & Select
    --------------------
    Search = { fg = c.base, bg = c.purple },
    IncSearch = { fg = c.base, bg = c.match },
    Substitute = { fg = c.base, bg = c.red, bold = true },
    CurSearch = "IncSearch",
    Visual = { fg = c.none, bg = c.selection },
    VisualNOS = { fg = c.selection, bg = c.none },

    --------------------
    --- Highlights
    --------------------
    MatchParen = { fg = c.orange, bg = c.none, bold = true },

    --------------------
    --- Spell
    --------------------
    SpellBad = { sp = c.red, undercurl = true },
    SpellCap = { sp = c.yellow, undercurl = true },
    SpellLocal = { sp = c.blue, undercurl = true },
    SpellRare = { sp = c.green, undercurl = true },

    ----------------
    --- Other
    ----------------
    Terminal = { fg = c.text, bg = c.base },
    Directory = { fg = c.blue, bg = c.none },
    QuickFixLine = { fg = c.base, bg = c.yellow },
  }
end

return callback
