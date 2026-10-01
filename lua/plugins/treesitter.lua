return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",

		config = function()
			require("nvim-treesitter").setup({
				install_dir = vim.fn.stdpath("data") .. "/site",
			})

			local parsers = {
				"c",
				"python",
				"javascript",
				"typescript",
				"tsx",
				"json",
				"html",
				"css",
				"bash",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
			}

			require("nvim-treesitter").install(parsers)
		end,
	},
}
