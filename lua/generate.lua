local palettes = {
	"pastelcool",
	"pastelcream",
	"pasteldark",
	"pastelfog",
	"pastelforest",
	"pastelmint",
	"pastelnight",
	"pastelpop",
	"pastelrose",
	"pastelwarm",

	"pastelwhite",
	"pastelsoft",
	"pastelsilk",
	"pastelsnow",
	"pastelcloud",
	"pastelrice",
	"pastelglow",
  "pastelgold",
	"pastelshell",
	"pastelfrost",
}

local function write(path, content)
	local dir = path:match("(.+)/[^/]+$")
	if dir then
		os.execute("mkdir -p " .. dir)
	end

	local f = assert(io.open(path, "w"))
	f:write(content)
	f:close()
end

for _, name in ipairs(palettes) do
	-- colorscheme file
	write("../colors/" .. name .. ".lua", 'require("pastel").load("' .. name .. '")\n')

	-- lualine file
	write("lualine/themes/" .. name .. ".lua", 'return require("pastel.special.lualine").load("' .. name .. '")\n')
end

print("Generated " .. (#palettes * 2) .. " files.")
