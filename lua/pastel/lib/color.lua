local function _to_rgb(color)
  if type(color) == "table" and color["r"] == nil then
    color.r = color[1]
    color.g = color[2]
    color.b = color[3]
  elseif type(color) == "number" then
    local num = color
    color = { r = num, g = num, b = num }
  end
  return color
end

local Color = {}

Color.__index = Color

function Color.__add(lhs, rhs)
  lhs = _to_rgb(lhs)
  rhs = _to_rgb(rhs)
  return setmetatable({
    r = lhs.r + rhs.r,
    g = lhs.g + rhs.g,
    b = lhs.b + rhs.b,
  }, Color)
end

function Color.__sub(lhs, rhs)
  lhs = _to_rgb(lhs)
  rhs = _to_rgb(rhs)
  return setmetatable({
    r = lhs.r - rhs.r,
    g = lhs.g - rhs.g,
    b = lhs.b - rhs.b,
  }, Color)
end

function Color.__div(lhs, rhs)
  lhs = _to_rgb(lhs)
  rhs = _to_rgb(rhs)
  return setmetatable({
    r = lhs.r / rhs.r,
    g = lhs.g / rhs.g,
    b = lhs.b / rhs.b,
  }, Color)
end

function Color.__mul(lhs, rhs)
  lhs = _to_rgb(lhs)
  rhs = _to_rgb(rhs)
  return setmetatable({
    r = lhs.r * rhs.r,
    g = lhs.g * rhs.g,
    b = lhs.b * rhs.b,
  }, Color)
end

function Color.__eq(lhs, rhs)
  lhs = _to_rgb(lhs)
  rhs = _to_rgb(rhs)
  local bool = false
  if lhs.r == rhs.r and lhs.g == rhs.g and lhs.b == rhs.b then bool = true end
  return bool
end

function Color.__lt(lhs, rhs)
  lhs = _to_rgb(lhs)
  rhs = _to_rgb(rhs)
  local y1 = 0.2126 * lhs.r + 0.7152 * lhs.g + 0.0722 * lhs.b
  local y2 = 0.2126 * rhs.r + 0.7152 * rhs.g + 0.0722 * rhs.b

  return y1 < y2
end

function Color.__tostring(rgb)
  -- local text = string.format("{%f, %f, %f}", rgb.r, rgb.g, rgb.b)
  local text = " " .. rgb:tohex() .. " "
  local text_color = "0;0;0"
  if rgb:less(127) then text_color = "255;255;255" end
  local out = string.format("\27[48;2;%d;%d;%dm\27[38;2;%sm%s\27[0m", rgb.r, rgb.g, rgb.b, text_color, text)
  return out
end

function Color.new(color)
  if type(color) == "string" then
    local hex = color:gsub("#", "")

    local r = tonumber("0x" .. hex:sub(1, 2))
    local g = tonumber("0x" .. hex:sub(3, 4))
    local b = tonumber("0x" .. hex:sub(5, 6))

    color = { r = r, g = g, b = b }
  elseif type(color) == "table" then
    color = { r = color[1], g = color[2], b = color[3] }
  elseif type(color) == "number" then
    local raw = string.format("%06x", color)
    color = {
      r = tonumber(raw:sub(1, 2), 16),
      g = tonumber(raw:sub(3, 4), 16),
      b = tonumber(raw:sub(5, 6), 16),
    }
  end
  return setmetatable(color, Color)
end

function Color.clamp(self)
  local function clamp(num) return math.max(0, math.min(255, num)) end

  return setmetatable({
    r = clamp(self.r),
    g = clamp(self.g),
    b = clamp(self.b),
  }, Color)
end

function Color.round(self)
  return setmetatable({
    r = math.floor(self.r + 0.5),
    g = math.floor(self.g + 0.5),
    b = math.floor(self.b + 0.5),
  }, Color)
end

function Color.abs(self)
  return setmetatable({
    r = math.abs(self.r),
    g = math.abs(self.g),
    b = math.abs(self.b),
  }, Color)
end

function Color.less(self, value)
  local y1 = 0.2126 * self.r + 0.7152 * self.g + 0.0722 * self.b
  return y1 < value
end

function Color.more(self, value)
  local y1 = 0.2126 * self.r + 0.7152 * self.g + 0.0722 * self.b
  return y1 > value
end

function Color.sort(self)
  local keys = {}
  for k, _ in pairs(self) do
    table.insert(keys, k)
  end

  table.sort(keys, function(a, b) return self[a] < self[b] end)

  return keys
end

function Color.blend(self, color, amount)
  self = (self + (color - self) * amount):round():clamp()
  return self
end

function Color.darken(self, amount)
  self = (self - amount):clamp()
  return self
end

function Color.lighten(self, amount)
  self = (self + amount):clamp()
  return self
end

function Color.darken_2(self, amount)
  self = (self - { amount * 0.6, amount * 0.8, amount * 0.6 }):clamp()
  return self
end

function Color.lighten_2(self, amount)
  self = (self + { amount, amount * 0.6, amount * 0.6 }):clamp()
  return self
end

function Color.desat(self, amount)
  local y1 = 0.2126 * self.r + 0.7152 * self.g + 0.0722 * self.b
  self = self:blend(y1, amount)
  return self
end

function Color.sat(self, amount)
  local min, mid, max = unpack(self:sort())
  local sat = Color.new { self.r, self.g, self.b }

  if self[mid] == self[max] then
    sat[min] = sat[min] - sat[min]
  elseif self[min] == self[mid] then
    sat[min] = sat[min] - sat[min]
    sat[mid] = sat[mid] - sat[mid]
  elseif self[min] == self[mid] and self[min] == self[max] then
    sat[min] = sat[min] - sat[min]
    sat[mid] = sat[mid] - sat[mid]
    sat[max] = sat[max] - sat[max]
  else
    local offset = (sat[mid] - sat[min]) / 255
    sat[min] = sat[min] - sat[min]
    sat[mid] = sat[mid] - (self[min] * offset)
  end
  return self:blend(sat, amount)
end

---Calculates the difference between 2 colors lightness values.
---@param self Color
---@param color Color
---@return number
function Color.dif(self, color)
  local y1 = 0.2126 * self.r + 0.7152 * self.g + 0.0722 * self.b
  local y2 = 0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b
  return math.abs(math.floor((y1 - y2) + 0.5))
end

function Color.di(self, color) return Color.abs(color - self) end

---Converts Color object to a hex string.
---@param self Color
---@return string
function Color.tohex(self)
  local r = string.format("%02X", self.r)
  local g = string.format("%02X", self.g)
  local b = string.format("%02X", self.b)

  return "#" .. r .. g .. b
end

---Debug function that prints an int array of RGB value with,
---terminal color support.
---@param self Color
---@return string
function Color.debug(self)
  local text = string.format("{ %.2f, %.2f, %.2f }", self.r, self.g, self.b)
  local text_color = "0;0;0"
  if self:less(127) then text_color = "255;255;255" end
  print(string.format("\27[48;2;%d;%d;%dm\27[38;2;%sm%s\27[0m", self.r, self.g, self.b, text_color, text))
end

return Color
