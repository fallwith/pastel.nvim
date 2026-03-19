-- this is a test to see what i like
local function callback(c)
  return {
    FlashBackdrop = { fg = c.mute },
    FlashLabel = { fg = c.base, bg = c.orange, bold = true },
  }
end

return callback
