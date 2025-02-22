return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependecies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_instaled = {
          "lua_ls",
          "pyright",
          "ts_ls",
          "gopls",
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
     {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      local lspconfig = require("lspconfig")
      local servers = { "lua_ls", "pyright", "ts_ls", "gopls", "clangd" }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({ capabilities = capabilities })
      end

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if (client == nil) then
            return
          end

          local opts = { buffer = args.buf }

           if client.supports_method('textDocument/publishDiagnostics') then
            vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
          end
          if client.supports_method('textDocument/definition') then
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          end
        end,
      })
    end
  },
}
