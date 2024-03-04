local on_attach = function(_, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<space>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>DD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>ee', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>qq', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap("n", "<space>fo", "<cmd>lua vim.lsp.buf.format { async = true }<CR>", opts)
  buf_set_keymap("n", "<leader>cl","<cmd>lua vim.lsp.codelens.refresh()<CR>", opts)
  buf_set_keymap("n", "<leader>cc", "<cmd>lua vim.lsp.codelens.run()<CR>", opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

string.format('document.querySelectorAll("a[title*=further]")[%s]', myVar)

-- Dart comes with language server built-in
-- https://github.com/williamboman/mason-lspconfig.nvim/issues/46#issuecomment-1523066371
require("lspconfig").dartls.setup({
  cmd = { "dart", "language-server", "--protocol=lsp" },
  filetypes = { "dart" },
  init_options = {
      closingLabels = true,
      flutterOutline = false,
      onlyAnalyzeProjectsWithOpenFiles = false,
      outline = true,
      suggestFromUnimportedLibraries = true,
  },
  settings = {
      dart = {
          completeFunctionCalls = true,
          showTodos = true,
          lineLength = 150,
      },
  },
  on_attach = on_attach,
})

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function (server_name)
      require("lspconfig")[server_name].setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }
  end,
}

-- Disable the annoying LSP virtual text.
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    underline = true,
    signs = true,
  }
)
