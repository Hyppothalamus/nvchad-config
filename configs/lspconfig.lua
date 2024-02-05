local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local masonlspconfig = require "mason-lspconfig"

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
-- local servers = { "html", "cssls", "tsserver", "clangd" }

masonlspconfig.setup {}

masonlspconfig.setup_handlers {
  function(server_name)
    if server_name == "omnisharp" then
      lspconfig[server_name].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        cmd = { "/home/kasper/.local/share/nvim/mason/bin/omnisharp" }
      }
      return
    end
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
}

-- for _, lsp in ipairs(servers) do
-- end

--
-- lspconfig.pyright.setup { blabla}
