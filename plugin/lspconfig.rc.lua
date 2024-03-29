local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')
local capabilities = vim.lsp.protocol.make_client_capabilities()

--[[ Neovim does not currently include built-in snippets. 
vscode-css-language-server only provides completions when snippet support is enabled.
To enable completion, install a snippet plugin and add the following override to your 
language client capabilities during setup ]]
capabilities.textDocument.completion.completionItem.snippetSupport = true
local on_attach = function(client, bufnr)
  -- formating
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.cssls.setup {
  capabilities = capabilities
}
--[[ LspInstallInfo ]]

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx",
  },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.pyright.setup{
  on_attach = on_attach,
}
  --[[ local servers = {'pyright'}
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
    }
  end ]]
nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the 'vim' global
        globals = { 'vim' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      }
    }
  }
}
