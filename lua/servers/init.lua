local on_attach = require("utils.lsp").on_attach

-- TODO: Require is deprecated, use vim.lsp.config instead
-- See: https://github.com/radleylewis/nvim/blob/1c0b1aa3474244c374612ed149210bf1e5fffca7/lua/servers/lua_ls.lua#L10
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					vim.fn.expand("$VIMRUNTIME/lua"),
					vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua",
				},
			},
		},
	},
})

local luacheck = require("efmls-configs.linters.luacheck")
local stylua = require("efmls-configs.formatters.stylua")

lspconfig.efm.setup({
	on_attach = on_attach,
	filetypes = {
		"lua",
	},
	init_options = {
		documentFormatting = true,
		documentRangeFormatting = true,
		hover = true,
		documentSymbol = true,
		codeAction = true,
		completion = true,
	},
	settings = {
		languages = {
			lua = { luacheck, stylua },
		},
	},
})
