return {
	"nvim-treesitter/nvim-treesitter",
  branch="master",
  lazy=false,
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter.configs").setup({

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
			auto_install = true,

			indent = {
				enable = true,
			},

			incremental_selection = {
				enable = true,
				keymaps = {
          init_selection = "gnn",          -- start selection
          node_incremental = "n",        -- expand node
          scope_incremental = "grc",       -- expand to scope
          node_decremental = "m",        -- shrink node
				},
			},

			highlight = {
				-- `false` will disable the whole extension
				enable = true,

				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = { "markdown" },
			},

			textobjects = { enable = true },
			rainbow = {
				enable = true,
				disable = { "html" },
				extended_mode = false,
				max_file_lines = nil,
			},
		})

		local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		treesitter_parser_config.templ = {
			install_info = {
				url = "https://github.com/vrischmann/tree-sitter-templ.git",
				files = { "src/parser.c", "src/scanner.c" },
				branch = "master",
			},
		}

		vim.treesitter.language.register("templ", "templ")
	end,
}
