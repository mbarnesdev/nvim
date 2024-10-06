return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<CR>")
		vim.keymap.set("n", "<C-p>", "<cmd>Telescope git_files<CR>")
		vim.keymap.set("n", "<leader>ph", "<cmd>Telescope help_tags<CR>")
	end,
}
