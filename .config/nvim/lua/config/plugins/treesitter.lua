return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"bash",
				"python",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"markdown",
				"markdown_inline",
			},
			auto_install = true,
			highlight = {
				enable = true,
	 		},
            indent = {
                enable = true,
                disable = { "python" },
            },
		})
	end
}
