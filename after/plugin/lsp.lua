local lsp = require('lsp-zero').preset('recommended')

-- Ensure typescript and rust are installed
lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
  'eslint',
  'lua_ls'
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
cmp.setup({
  formatting = {
    -- changing the order of fields so the icon is the first
    fields = { 'menu', 'abbr', 'kind' },
    -- here is where the change happens
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = 'Ω',
        path = '🖫',
        nvim_lua = 'Π',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
})

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Tab>'] = cmp.mapping.confirm({ select = true }),
  ['<CR>'] = cmp.mapping.confirm({
    behavior = cmp.ConfirmBehavior.Insert,
    select = true,
  }),
  ["<S-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings,
})

lsp.format_on_save({
  servers = {
    ['lua_ls'] = { 'lua' },
    ['rust_analyzer'] = { 'rust' },
    ['prettier'] = { 'tsx', 'jsx', 'javascript', 'typescript' },
  }
})

-- -- Fix Undefined global 'vim'
-- lsp.configure('lua-language-server', {
--     settings = {
--         Lua = {
--             diagnostics = {
--                 globals = { 'vim' }
--             }
--         }
--     }
-- })

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = {
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
  }
})

lsp.setup()

vim.diagnostic.config({
  globals = { 'vim' },
  virtual_text = true
})
