return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "folke/neodev.nvim", opts = {} },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    local mason_lspconfig = require("mason-lspconfig")
    local lspconfig = require("lspconfig")

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local servers = {
      pyright = {},
      jsonls = {},
      html = {},
      cssls = {},
      tailwindcss = {},
      eslint = {},
    }

    local on_attach = function(client, bufnr)
      if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = vim.api.nvim_create_augroup("Format", { clear = true }),
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format()
          end,
        })
      end
    end

    mason_lspconfig.setup({
      ensure_installed = vim.tbl_keys(servers),
    })

for server_name, server_opts in pairs(servers) do
  lspconfig[server_name].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = server_opts,
  })
end

  end,
}

