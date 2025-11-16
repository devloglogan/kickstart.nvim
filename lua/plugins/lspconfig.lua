return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "creativenull/efmls-configs-nvim"
  },
  config = function()
    -- Note: Not a relative filepath, Lua is weird
    require("utils.diagnostics").setup()
    require("servers")
  end
}
