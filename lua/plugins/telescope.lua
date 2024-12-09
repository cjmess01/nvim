return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		require("telescope").setup()
		local keymap = vim.keymap
		keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>")
		keymap.set("n", "<leader>pg", "<cmd>Telescope git_files<cr>")
	end,
}
