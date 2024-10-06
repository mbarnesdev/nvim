return {
	{
		"hrsh7th/nvim-cmp", -- The completion plugin
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body) -- For vsnip users
					end,
				},
				mapping = {
					["<C-n>"] = cmp.mapping.select_next_item(), -- Down
					["<C-p>"] = cmp.mapping.select_prev_item(), -- Up
					["<C-space>"] = cmp.mapping.complete(), -- Show completion suggestions
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept selected completion
				},
				sources = {
					{ name = "nvim_lsp" }, -- LSP source
					{ name = "buffer" }, -- Buffer completions
				},
			})
		end,
	},
	{
		"hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
	},
	{
		"hrsh7th/cmp-buffer", -- Buffer completions
	},
	{
		"hrsh7th/vim-vsnip", -- Snippet support
	},
}
