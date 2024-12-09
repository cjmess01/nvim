return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	opts = {},
	config = function()
		require("nvim-treesitter.configs").setup({

			textobjects = {
				select = {

					enable = true,
					lookahead = true,
					keymaps = {

						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						-- You can optionally set descriptions to the mappings (used in the desc parameter of
						-- nvim_buf_set_keymap) which plugins like which-key display
						["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
						-- You can also use captures from other query groups like `locals.scm`
						["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
					},
					include_surrounding_whitespace = true,
				},
			},
			-- A list of parser names, or "all"
		})
	end,
}
