local M = {}

local priority = 1

local PATH = debug.getinfo(1, "S").source:sub(2):match("(.*/)")

M.config = {
	background = {
		dark = "pasteldark",
		light = "pastelsoft",
	},
	palette = nil, -- force a specific theme variant (overrides :colorscheme and background)
	termguicolors = true,
	style = {
		transparent = false,
		inactive = true,
		float = true,
		border = true,
		bold = true,
		italic = false,
		underline = true,
		invert_title = false,
		simple_syntax = false,
		dynamic_statusline = false,
	},
	colors = {
		common = {},
		global = {},
	},
	highlights = {
		global = {},
	},
	exclude = {
		core = {},
		plugins = {},
	},
	filetypes = {},
}

M.palettes = {
	-- Dark
	"pasteldark",
	"pastelforest",
	"pastelmint",
	"pastelrose",
	"pastelcream",
	"pastelcool",
	"pastelfog",
	"pastelnight",
	"pastelpop",
	"pastelwarm",

	-- Light
	"pastelsoft",
	"pastelwhite",
	"pastelsilk",
	"pastelsnow",
	"pastelcloud",
	"pastelrice",
	"pastelglow",
	"pastelgold",
	"pastelshell",
	"pastelfrost",
}

local function set_colorscheme(name, theme)
	name = name or "pastel"

	if not vim.tbl_contains(M.palettes, theme) then
		vim.notify(string.format("pastel.nvim: invalid colorscheme: %s", theme))
		theme = "pasteldark"
	end

	M.config.theme = theme

	if vim.g.colors_name then
		vim.cmd.highlight("clear")
	end
	if vim.fn.exists("syntax_on") then
		vim.cmd.syntax("reset")
	end

	vim.o.termguicolors = M.config.termguicolors
	vim.g.colors_name = name

	return theme
end

function M.load(name)
	local opts = M.config
	local theme = opts.palette

	if not theme or priority == 0 then
		if not name then
			theme = theme or opts.background[vim.o.background]
		else
			theme = name
		end
	else
		priority = 0
	end

	local util = require("pastel.lib.util")

	theme = set_colorscheme(name, theme)
	util.set_highlights(PATH, opts)

	-- WARN: Experimental feature.
	vim.schedule(function()
		if vim.bo.buftype ~= "" then
			return
		end

		local ft = vim.bo.filetype
		local ftopts = opts.filetypes[ft]

		if not next(ftopts or {}) then
			return
		end

		ftopts.theme = theme
		util.set_highlights(PATH, ftopts)
	end)
end

function M.setup(opts)
	-- merge config with provided opts
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
	vim.schedule(function()
		if vim.bo.buftype ~= "" then
			return
		end

		local ft = vim.bo.filetype

		M.config.filetypes[ft] = vim.tbl_deep_extend("force", M.config, M.config.filetypes[ft] or {})
	end)
end

return M
