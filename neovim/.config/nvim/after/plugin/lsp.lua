local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

-- remap complete keys
local cmp = require('cmp')
local cmp_select = {behaviour = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
 ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
 ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
 ['<Tab>'] = cmp.mapping.confirm({ select = true}),
 ['<CR>'] = cmp.mapping.abort(),
 ['<C-Space>'] = cmp.mapping.complete()
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
end)

lsp.setup()
