require('telescope').load_extension('fzf')
require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
	},
})
