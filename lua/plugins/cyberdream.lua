return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		vim.api.nvim_set_keymap("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true }),
		transparent = false,
	},
}
