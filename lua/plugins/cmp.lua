return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",      -- LSP source
    "hrsh7th/cmp-buffer",        -- buffer source
    "hrsh7th/cmp-path",          -- path source
    "hrsh7th/cmp-cmdline",       -- optional: command line completions
    "onsails/lspkind.nvim",      -- VSCode-style icons
    {
      "L3MON4D3/LuaSnip",        -- Snippet engine
      version = "v2.*",
      build = "make install_jsregexp", -- Needed for some snippet patterns
    },
    "rafamadriz/friendly-snippets", -- Community snippet collection
  },
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local luasnip = require("luasnip")

    -- Lazy-load friendly snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = false, -- Only confirm explicitly selected items
        }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text",
          maxwidth = 50,
          ellipsis_char = "…",
        }),
      },
    })

    -- Completion behavior
    vim.opt.completeopt = { "menuone", "noinsert", "noselect" }

    -- Highlighting fallback
    vim.cmd([[highlight! default link CmpItemKind CmpItemMenuDefault]])
  end,
}
