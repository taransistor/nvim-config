return {
	{
		"stevearc/oil.nvim",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {},
		config = function()
			require("oil").setup({
				view_options = {
					show_hidden = false,
				},
			})
		end,
	},
}
