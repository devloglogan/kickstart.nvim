return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} }
  },
  config = function()
    -- Note: Not a relative filepath, Lua is weird
    require("servers")
  end
}
