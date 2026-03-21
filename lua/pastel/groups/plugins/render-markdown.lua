local function callback(c)

  return {
    RenderMarkdownH1 = { link = "@markup.heading.1.markdown" },
    RenderMarkdownH2 = { link = "@markup.heading.2.markdown" },
    RenderMarkdownH3 = { link = "@markup.heading.3.markdown" },
    RenderMarkdownH4 = { link = "@markup.heading.4.markdown" },
    RenderMarkdownH5 = { link = "@markup.heading.5.markdown" },
    RenderMarkdownH6 = { link = "@markup.heading.6.markdown" },

    RenderMarkdownH1Bg = {
      fg = c.purple,
      bg = c.blend(c.purple, c.base, 0.75),
      bold = true,
    },
    RenderMarkdownH2Bg = {
      fg = c.blue,
      bg = c.blend(c.blue, c.base, 0.75),
      bold = true,
    },
    RenderMarkdownH3Bg = {
      fg = c.cyan,
      bg = c.blend(c.cyan, c.base, 0.75),
      bold = true,
    },
    RenderMarkdownH4Bg = {
      fg = c.green,
      bg = c.blend(c.green, c.base, 0.75),
      bold = true,
    },
    RenderMarkdownH5Bg = {
      fg = c.yellow,
      bg = c.blend(c.yellow, c.base, 0.75),
      bold = true,
    },
    RenderMarkdownH6Bg = {
      fg = c.purple,
      bg = c.blend(c.yellow, c.base, 0.75),
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
