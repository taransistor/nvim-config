return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},

		config = function()
			local telescope = require("telescope")

			telescope.setup({})

			telescope.load_extension("fzf")
		end,

		keys = {
			{
				"<leader>pf",
				"<cmd>Telescope find_files<CR>",
				desc = "Find files",
			},
			{
				"<leader>pg",
				"<cmd>Telescope live_grep<CR>",
				desc = "Live grep",
			},
			{
				"<leader>pb",
				"<cmd>Telescope buffers<CR>",
				desc = "Find buffers",
			},
			{
				"<leader>ph",
				"<cmd>Telescope help_tags<CR>",
				desc = "Help tags",
			},
		},
	},
}
