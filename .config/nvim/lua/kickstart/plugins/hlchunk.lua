-- plugin for indeny idenification
-- https://github.com/shellRaining/hlchunk.nvim/tree/main

return {
	"shellRaining/hlchunk.nvim",
	event = { "UIEnter" },
	config = function()
		require("hlchunk").setup({
			indent = {
				enable = true,
				chars = { "│", "¦", "┆", "┊" }, -- more code can be found in https://unicodeplus.com/
				style = {
					"#FF0000",
					"#FF7F00",
					"#FFFF00",
					"#00FF00",
					"#00FFFF",
					"#0000FF",
					"#8B00FF",
				},
			},
			blank = {
				enable = false,
			},
		})
	end,
}
