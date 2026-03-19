local function callback(c)
  local color = require "pastel.lib.color"

  return {
    RenderMarkdownH1 = { link = "@markup.heading.1.markdown" },
    RenderMarkdownH2 = { link = "@markup.heading.2.markdown" },
    RenderMarkdownH3 = { link = "@markup.heading.3.markdown" },
    RenderMarkdownH4 = { link = "@markup.heading.4.markdown" },
    RenderMarkdownH5 = { link = "@markup.heading.5.markdown" },
    RenderMarkdownH6 = { link = "@markup.heading.6.markdown" },

    RenderMarkdownH1Bg = {
      fg = c.purple,
      bg = color.new(c.purple):blend(color.new(c.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH2Bg = {
      fg = c.blue,
      bg = color.new(c.blue):blend(color.new(c.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH3Bg = {
      fg = c.cyan,
      bg = color.new(c.cyan):blend(color.new(c.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH4Bg = {
      fg = c.green,
      bg = color.new(c.green):blend(color.new(c.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH5Bg = {
      fg = c.yellow,
      bg = color.new(c.yellow):blend(color.new(c.base), 0.75):tohex(),
      bold = true,
    },
    RenderMarkdownH6Bg = {
      fg = c.purple,
      bg = color.new(c.yellow):blend(color.new(c.base), 0.75):tohex(),
      bold = true,
    },

    RenderMarkdownCode = { bg = c.tool },
    RenderMarkDownBullet = { link = "@markup.list.markdown" },
    RenderMarkdownChecked = { link = "@markup.list.checked" },
    RenderMarkdownUnchecked = { link = "@markup.list.unchecked" },
    RenderMarkdownTodo = { fg = c.green, bold = true },
    RenderMarkDownLink = { fg = c.blue, bold = true },
  }
end

return callback
