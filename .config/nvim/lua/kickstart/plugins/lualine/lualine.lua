-- plugin for indeny idenification
-- https://github.com/shellRaining/hlchunk.nvim/tree/main

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = { "UIEnter" },
	config = function()
		require("kickstart.plugins.lualine.themes.evil_lualine")
	end,
}
