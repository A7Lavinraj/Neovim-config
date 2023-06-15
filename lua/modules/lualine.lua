local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- configure lualine with modified theme
lualine.setup({
	options = {
		icons_enabled = true,
		theme = "catppuccin",
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline", "toggleterm" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { { "branch", icons_enabled = true, icon = "" } },
		lualine_c = {
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
			},
		},
		lualine_x = { "filename" },
		lualine_y = {
			"filetype",
		},
		lualine_z = { "location" },
	},

	inactive_sections = {
		lualine_a = { "mode" },
		lualine_b = { { "branch", icons_enabled = true, icon = "" } },
		-- lualine_c = {},
		lualine_x = {},
		lualine_c = {
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
			},
		},
		lualine_y = {
			"filetype",
		},
		lualine_z = { "location" },
	},
})
