return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{
			"f/",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
		},
	},
}
