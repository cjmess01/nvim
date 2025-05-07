return {
  "williamboman/mason.nvim",
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup()

    require("mason-tool-installer").setup({
      ensure_installed = {
        "prettier",
        "black",
        "isort",
        "pylint",
        "eslint_d",
      },
      auto_update = false,
      run_on_start = true,
    })
  end,
}
