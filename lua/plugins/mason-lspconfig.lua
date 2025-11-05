return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    local mason = require("mason")
    local mlsp = require("mason-lspconfig")
    local lsp = vim.lsp

    mason.setup()
    mlsp.setup()

    local installed = mlsp.get_installed_servers()

    -- optional: define these functions before using them
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local function on_attach(client, bufnr)
      local bufmap = function(mode, lhs, rhs)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
      end

      bufmap("n", "K", vim.lsp.buf.hover)
      bufmap("n", "gd", vim.lsp.buf.definition)
      bufmap("n", "gr", vim.lsp.buf.references)
      bufmap("n", "gi", vim.lsp.buf.implementation)
      bufmap("n", "<leader>rn", vim.lsp.buf.rename)
      bufmap("n", "<leader>ca", vim.lsp.buf.code_action)
    end

    for _, server in ipairs(installed) do
      lsp.config(server, {
        on_attach = on_attach,
        capabilities = capabilities,
      })
      -- lsp.start(server)
    end
  end,
}

