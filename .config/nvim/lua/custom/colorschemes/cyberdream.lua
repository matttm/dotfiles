return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	config = function()
		require("cyberdream").setup({
			-- Enable transparent background
			transparent = false,

			-- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
			cache = false,
		})
		vim.cmd.colorscheme("cyberdream")
	end,
	priority = 1000,
}
