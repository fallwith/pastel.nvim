local M = {}

local function hex_to_rgb(hex)
	hex = hex:gsub("#", "")
	return {
		r = tonumber(hex:sub(1, 2), 16),
		g = tonumber(hex:sub(3, 4), 16),
		b = tonumber(hex:sub(5, 6), 16),
	}
end

local function rgb_to_hex(rgb)
	return string.format("#%02x%02x%02x", rgb.r, rgb.g, rgb.b)
end

function M.blend(fg, bg, alpha)
	alpha = alpha or 0.75

	local f = hex_to_rgb(fg)
	local b = hex_to_rgb(bg)

	local function mix(c1, c2)
		return math.floor((c1 * (1 - alpha)) + (c2 * alpha) + 0.5)
	end

	return rgb_to_hex({
		r = mix(f.r, b.r),
		g = mix(f.g, b.g),
		b = mix(f.b, b.b),
	})
end

function M.lighten(hex, amount)
	amount = amount or 0.25 -- 0 → no change, 1 → white

	local c = hex_to_rgb(hex)

	local function lift(v)
		return math.floor(v + (255 - v) * amount + 0.5)
	end

	return rgb_to_hex({
		r = lift(c.r),
		g = lift(c.g),
		b = lift(c.b),
	})
end

return M
